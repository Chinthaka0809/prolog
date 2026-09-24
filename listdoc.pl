% Base case: The length of an empty list is 0
list_length([], 0).

% Recursive case: count head, then recurse on the tail
list_length([_ | Tail], Length) :-
    list_length(Tail, TailLength),
    Length is TailLength + 1.
	
	
% Base case: Only one element, it's the maximum
max_in_list([X], X).

% Recursive case: Compare head with max of tail
max_in_list([H | T], Max) :-
    max_in_list(T, MaxTail),
    ( H >= MaxTail -> Max = H ; Max = MaxTail ).
	
% Base case: Only one element, it's the maximum
max_in_list([X], X).

% Recursive case: Compare head with max of tail
max_in_list([H | T], Max) :-
    max_in_list(T, MaxTail),
    ( H >= MaxTail -> Max = H ; Max = MaxTail ).
	
max(X, Y, X) :- X >= Y, !.
max(_, Y, Y).

max_of_three(X, Y, Z, Max) :-
    max(X, Y, TempMax),
    max(TempMax, Z, Max).

not_member(_, []).
not_member(X, [H|T]) :-
    X \= H,
    not_member(X, T).

count_nonzero([], 0) :- !.

count_nonzero([H|T], Count) :-
    H =:= 0,
    !,
    count_nonzero(T, Count).

count_nonzero([_|T], Count) :-
    count_nonzero(T, C1),
    Count is C1 + 1.


