sign(X, positive) :- X > 0.
sign(X, negative) :- X < 0.
sign(0, zero).

sign(X, positive) :- X > 0, !.
sign(X, negative) :- X < 0, !.
sign(0, zero).

age_category(Age, adult) :- Age >= 18, !.
age_category(_, child).

member(X, [X|_]) :- !.
member(X, [_|T]) :- member(X, T).


grade(Mark, A) :-
    Mark >= 75, !.

grade(Mark, B) :-
    Mark >= 65, !.

grade(Mark, C) :-
    Mark >= 55, !.

grade(Mark, S) :-
    Mark >= 35, !.

grade(_, F).

