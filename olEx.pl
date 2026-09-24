

distance((X1,Y1), (X2,Y2), D) :-
    DX is X1 - X2,
    DY is Y1 - Y2,
    D is sqrt(DX*DX + DY*DY).


square(N, Char) :-
    square_rows(N, N, Char).


square_rows(0, _, _).
square_rows(Rows, Cols, Char) :-
    square_row(Cols, Char),
    nl,
    Rows1 is Rows - 1,
    square_rows(Rows1, Cols, Char).


square_row(0, _).
square_row(Cols, Char) :-
    write(Char),
    Cols1 is Cols - 1,
    square_row(Cols1, Char).
	


square(N, Char) :-
    between(1, N, _),             % loop over rows
    ( between(1, N, _),           % loop over columns
      write(Char),
      fail                        % force backtracking through columns
    ; nl, fail                    % after a row ends, print newline
    ).
square(_, _).                     % succeed after all backtracking




fibonacci(0, 1).              % base case: F0 = 1
fibonacci(1, 1).              % base case: F1 = 1
fibonacci(N, F) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, F1),
    fibonacci(N2, F2),
    F is F1 + F2.




element_at([Elem|_], 1, Elem).
element_at([_|Tail], N, Elem) :-
    N > 1,
    N1 is N - 1,
    element_at(Tail, N1, Elem).
	
?- element_at([tiger, dog, teddy_bear, horse, cow], 3, X).
X = teddy_bear.

?- element_at([a, b, c, d], 1, X).
X = a.

?- element_at([a, b, c, d], 27, X).
false.



mean(List, Mean) :-
    sum_and_length(List, Sum, Length),
    Length > 0,
    Mean is Sum / Length.


sum_and_length([], 0, 0).
sum_and_length([H|T], Sum, Length) :-
    sum_and_length(T, Sum1, Length1),
    Sum is H + Sum1,
    Length is Length1 + 1.
	


range(Low, High, []) :-
    Low > High.


range(Low, High, [Low|Rest]) :-
    Low =< High,
    Next is Low + 1,
    range(Next, High, Rest).
	
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


likes(alice, apple).
likes(bob, banana).
likes(charlie, apple).


same_taste(Person1, Person2) :-
    likes(Person1, Fruit),
    likes(Person2, Fruit),
    Person1 \= Person2.  % Not the same person (unifiable but different)


same_person_same_taste(Person1, Person2) :-
    likes(Person1, Fruit),
    likes(Person2, Fruit),
    Person1 == Person2.  % Strict identity


different_individuals(Person1, Person2) :-
    Person1 \== Person2.


match_fruit(Person, Fruit) :-
    likes(Person, F),
    Fruit = F.  % Unification assigns Fruit to matched value




same_taste(alice, charlie).
true.

same_person_same_taste(alice, alice).

same_person_same_taste(alice, charlie).
false.

different_individuals(bob, charlie).


known_person(alice).
known_person(bob).

greet_user :-
    write('What is your name? '), nl,
    read(Name),
    write('Hello, '), write(Name), write('!'), nl.

age_response :-
    write('Enter your age: '), nl,
    read(Age),
    Age >= 18 ->
        write('You are an adult.'), nl ;
        write('You are a minor.'), nl.

interact :-
    write('Please enter your name: '), nl,
    read(Name),
    write('Hi '), write(Name), write(', how old are you?'), nl,
    read(Age),
    write('You are '), write(Age), write(' years old.'), nl.



test_term(john).          
test_term(42).             
test_term(3.14).           
test_term(X).              
test_term(name(john)).     

check_atom(X) :-
    atom(X),
    write(X), write(' is an atom.'), nl.

check_number(X) :-
    number(X),
    write(X), write(' is a number.'), nl.

check_integer(X) :-
    integer(X),
    write(X), write(' is an integer.'), nl.

check_float(X) :-
    float(X),
    write(X), write(' is a float.'), nl.

check_variable(X) :-
    var(X),
    write('The term is a variable.'), nl.

check_nonvar(X) :-
    nonvar(X),
    write(X), write(' is not a variable.'), nl.

check_compound(X) :-
    compound(X),
    write(X), write(' is a compound term.'), nl.



marks(john, 80, 90, 70).
marks(mary, 75, 25, 55).
marks(alan, 30, 50, 10).

total_marks(Student, Total) :-
    marks(Student, M1, M2, M3),
    Total is M1 + M2 + M3.

average_marks(Student, Average) :-
    marks(Student, M1, M2, M3),
    Total is M1 + M2 + M3,
    Average is Total / 3.


