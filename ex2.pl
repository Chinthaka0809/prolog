salary(john, 50000).
salary(mary, 65000).
salary(raj, 30000).

bonus(Employee, Bonus) :-
    salary(Employee, Salary),
    Bonus is Salary * 0.10.

same_salary(E1, E2) :-
    salary(E1, S1),
    salary(E2, S2),
    S1 =:= S2.

earns_more_than(Employee, Threshold) :-
    salary(Employee, Salary),
    Salary > Threshold.

earns_less_or_equal(Employee, Limit) :-
    salary(Employee, Salary),
    Salary =< Limit.

salary_different(E1, E2) :-
    salary(E1, S1),
    salary(E2, S2),
    S1 =\= S2.
