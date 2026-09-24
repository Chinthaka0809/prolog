% Base case: empty list has 0 even numbers
count_even([], 0) :- !.

% If head is even, increment count
count_even([H|T], N) :-
    0 is H mod 2,
    !,
    count_even(T, N1),
    N is N1 + 1.

% If head is odd, skip and continue
count_even([_|T], N) :-
    count_even(T, N).

?- count_even([2, 7, 4, 9, 6, 1], N).