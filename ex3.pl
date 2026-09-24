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
