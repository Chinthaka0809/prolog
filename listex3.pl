remove_duplicates([], []).  % Base case: empty list yields empty result

remove_duplicates([Head | Tail], Result) :-
    member(Head, Tail),     % Head is a duplicate
    remove_duplicates(Tail, Result).  % Skip the Head

remove_duplicates([Head | Tail], [Head | Result]) :-
    \+ member(Head, Tail),  % Head is unique
    remove_duplicates(Tail, Result).  % Keep the Head
