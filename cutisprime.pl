is_prime(2) :- !.
is_prime(N) :-
    N > 2,
    \+ has_divisor(N, 2).

has_divisor(N, D) :-
    D * D =< N,
    (N mod D =:= 0 ; D2 is D + 1, has_divisor(N, D2)).
