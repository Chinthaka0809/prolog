likes(alice, apple).
likes(bob, banana).
likes(charlie, apple).

% 1. Who likes the same fruit as someone else? (using unification)
same_taste(Person1, Person2) :-
    likes(Person1, Fruit),
    likes(Person2, Fruit),
    Person1 \= Person2.  % Not the same person (unifiable but different)

% 2. Check if two people like the same fruit but are the same person (demonstrate ==)
same_person_same_taste(Person1, Person2) :-
    likes(Person1, Fruit),
    likes(Person2, Fruit),
    Person1 == Person2.  % Strict identity

% 3. Fail when comparing with \== (not strictly identical)
different_individuals(Person1, Person2) :-
    Person1 \== Person2.

% 4. Assign fruit to person if not already matched (using =)
match_fruit(Person, Fruit) :-
    likes(Person, F),
    Fruit = F.  % Unification assigns Fruit to matched value



% Query Alice and Charlie both like apple, and they are not the same person.
same_taste(alice, charlie).
true.
% Uses == to check for identity.
same_person_same_taste(alice, alice).
% Although they like the same fruit, alice \== charlie, so this fails.
same_person_same_taste(alice, charlie).
false.
% Uses \== to check they’re not the same exact person.
different_individuals(bob, charlie).