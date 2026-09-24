% Base predicate to compute the mean
mean(List, Mean) :-
    sum_and_length(List, Sum, Length),
    Length > 0,
    Mean is Sum / Length.

% Helper predicate to compute the sum and length of the list
sum_and_length([], 0, 0).
sum_and_length([H|T], Sum, Length) :-
    sum_and_length(T, Sum1, Length1),
    Sum is H + Sum1,
    Length is Length1 + 1.