test_term(john).           % atom
test_term(42).             % integer
test_term(3.14).           % float
test_term(X).              % variable (unbound)
test_term(name(john)).     % compound term

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
