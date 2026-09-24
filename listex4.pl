reverse_list(List, Reversed) :-
    reverse_acc(List, [], Reversed).

% Helper predicate with accumulator
reverse_acc([], Accumulator, Accumulator).  % Base case: nothing to reverse

reverse_acc([Head | Tail], Accumulator, Reversed) :-
    reverse_acc(Tail, [Head | Accumulator], Reversed).  % Add head to front of accumulator
