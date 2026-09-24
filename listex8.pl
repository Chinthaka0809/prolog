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
