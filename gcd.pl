% Base case: GCD of X and 0 is X
gcd(X, 0, X) :- X > 0, !.

% Recursive case: gcd(A, B) = gcd(B, A mod B)
gcd(A, B, G) :-
    B > 0,
    R is A mod B,
    gcd(B, R, G).
