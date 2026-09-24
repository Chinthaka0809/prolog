count_nonzero([], 0) :- !.

count_nonzero([H|T], Count) :-
    H =:= 0,
    !,
    count_nonzero(T, Count).

count_nonzero([_|T], Count) :-
    count_nonzero(T, C1),
    Count is C1 + 1.
