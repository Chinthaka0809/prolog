

% Base case: Only one element, it's the maximum
max_in_list([X], X).

% Recursive case: Compare head with max of tail
max_in_list([H | T], Max) :-
    max_in_list(T, MaxTail),
    ( H >= MaxTail -> Max = H ; Max = MaxTail ).
	
	
analyse_list(List) :-
    List = [Head | Tail],               % Matches non-empty lists
    write('This is the head of your list: '), write(Head), nl,
    write('This is the tail of your list: '), write(Tail), nl.

analyse_list([]) :-                     % Matches empty list
    write('This is an empty list.'), nl.
	
membership(Element, [Element | _]).     % Case when Element is the head of the list

membership(Element, [_ | Tail]) :-      % Recursive case: check the rest of the list
    membership(Element, Tail).


remove_duplicates([], []).  % Base case: empty list yields empty result

remove_duplicates([Head | Tail], Result) :-
    member(Head, Tail),     % Head is a duplicate
    remove_duplicates(Tail, Result).  % Skip the Head

remove_duplicates([Head | Tail], [Head | Result]) :-
    \+ member(Head, Tail),  % Head is unique
    remove_duplicates(Tail, Result).  % Keep the Head


reverse_list(List, Reversed) :-
    reverse_acc(List, [], Reversed).

% Helper predicate with accumulator
reverse_acc([], Accumulator, Accumulator).  % Base case: nothing to reverse

reverse_acc([Head | Tail], Accumulator, Reversed) :-
    reverse_acc(Tail, [Head | Accumulator], Reversed).  % Add head to front of accumulator


% replace(+List, +Elem, +NewElem, -Result)

% Base case: empty list
replace([], _, _, []).

% If the head matches the element to replace, put NewElem in Result
replace([Elem|Tail], Elem, NewElem, [NewElem|ResultTail]) :-
    replace(Tail, Elem, NewElem, ResultTail).

% If the head is different, keep it unchanged
replace([Head|Tail], Elem, NewElem, [Head|ResultTail]) :-
    Head \= Elem,
    replace(Tail, Elem, NewElem, ResultTail).


% power(+Set, -PowerSet)
% Computes the power set of Set (a list with no duplicates)

% Base case: the power set of the empty set is a list containing just the empty set
power([], [[]]).

% Recursive case:
% For a non-empty list [H|T], compute the power set of T (PS1).
% Then add H to each subset in PS1 to create PS2.
% Finally, combine PS1 and PS2 into the full power set.
power([H|T], PS) :-
    power(T, PS1),              % compute power set of the tail
    add_elem(H, PS1, PS2),      % add H to each subset
    append(PS1, PS2, PS).       % union of PS1 and PS2

% add_elem(+Elem, +Subsets, -NewSubsets)
% Add Elem to each subset in Subsets
add_elem(_, [], []).
add_elem(Elem, [S|Ss], [[Elem|S]|Rs]) :-
    add_elem(Elem, Ss, Rs).
