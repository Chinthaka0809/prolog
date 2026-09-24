analyse_list(List) :-
    List = [Head | Tail],               % Matches non-empty lists
    write('This is the head of your list: '), write(Head), nl,
    write('This is the tail of your list: '), write(Tail), nl.

analyse_list([]) :-                     % Matches empty list
    write('This is an empty list.'), nl.