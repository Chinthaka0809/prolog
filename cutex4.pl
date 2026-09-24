% Base case: the element occurs 0 times in an empty list
occurrences(_, [], 0) :- !.

% Case 1: Head matches the element -> increment count
occurrences(E, [E|T], N) :- 
    !,
    occurrences(E, T, N1),
    N is N1 + 1.

% Case 2: Head does not match -> continue without increment
occurrences(E, [_|T], N) :- 
    occurrences(E, T, N).


?- occurrences(dog, [dog, frog, cat, dog, dog, tiger], N).
N = 3.

?- occurrences(cat, [dog, frog, cat, dog, dog, tiger], N).
N = 1.

?- occurrences(elephant, [dog, frog, cat, dog, dog, tiger], N).
N = 0.
