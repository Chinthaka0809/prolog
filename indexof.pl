% Base case: Element is at the head (position 1)
index_of(Element, [Element | _], 1).

% Recursive case: Element is not at the head, check tail
index_of(Element, [_ | Tail], Index) :-
    index_of(Element, Tail, Index1),
    Index is Index1 + 1.