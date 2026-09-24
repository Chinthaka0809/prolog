% element_at/3
% element_at(List, N, Elem) is true if Elem is the Nth element of List.
% Indexing starts at 1.

element_at([Elem|_], 1, Elem).
element_at([_|Tail], N, Elem) :-
    N > 1,
    N1 is N - 1,
    element_at(Tail, N1, Elem).
	
?- element_at([tiger, dog, teddy_bear, horse, cow], 3, X).
X = teddy_bear.

?- element_at([a, b, c, d], 1, X).
X = a.

?- element_at([a, b, c, d], 27, X).
false.

