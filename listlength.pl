% Base case: The length of an empty list is 0
list_length([], 0).

% Recursive case: count head, then recurse on the tail
list_length([_ | Tail], Length) :-
    list_length(Tail, TailLength),
    Length is TailLength + 1.