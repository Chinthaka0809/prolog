% Facts
parent(john, mary).
parent(john, sam).
parent(mary, alice).
parent(sam, bob).

% Rules
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

%Query
grandparent(john, bob).