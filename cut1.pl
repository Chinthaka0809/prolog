max(X, Y, X) :- X >= Y.
max(X, Y, Y) :- X < Y.


%////////////
max(X, Y, X) :- X >= Y, !.
max(_, Y, Y).
