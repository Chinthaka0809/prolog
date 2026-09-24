not_member(_, []).
not_member(X, [H|T]) :-
    X \= H,
    not_member(X, T).
