% Base case: Only one element, it's the maximum
max_in_list([X], X).

% Recursive case: Compare head with max of tail
max_in_list([H | T], Max) :-
    max_in_list(T, MaxTail),
    ( H >= MaxTail -> Max = H ; Max = MaxTail ).