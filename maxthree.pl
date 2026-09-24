max(X, Y, X) :- X >= Y, !.
max(_, Y, Y).

max_of_three(X, Y, Z, Max) :-
    max(X, Y, TempMax),
    max(TempMax, Z, Max).
