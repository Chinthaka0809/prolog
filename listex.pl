
max_in_list([X], X).

max_in_list([H | T], Max) :-
    max_in_list(T, MaxTail),
    ( H >= MaxTail -> Max = H ; Max = MaxTail ).
	
	
analyse_list(List) :-
    List = [Head | Tail],               
    write('This is the head of your list: '), write(Head), nl,
    write('This is the tail of your list: '), write(Tail), nl.

analyse_list([]) :-                    
    write('This is an empty list.'), nl.
	
membership(Element, [Element | _]).    
membership(Element, [_ | Tail]) :-      
    membership(Element, Tail).


remove_duplicates([], []).  

remove_duplicates([Head | Tail], Result) :-
    member(Head, Tail),     
    remove_duplicates(Tail, Result).  

remove_duplicates([Head | Tail], [Head | Result]) :-
    \+ member(Head, Tail), 
    remove_duplicates(Tail, Result). 


reverse_list(List, Reversed) :-
    reverse_acc(List, [], Reversed).


reverse_acc([], Accumulator, Accumulator). 

reverse_acc([Head | Tail], Accumulator, Reversed) :-
    reverse_acc(Tail, [Head | Accumulator], Reversed).  


replace([], _, _, []).


replace([Elem|Tail], Elem, NewElem, [NewElem|ResultTail]) :-
    replace(Tail, Elem, NewElem, ResultTail).

replace([Head|Tail], Elem, NewElem, [Head|ResultTail]) :-
    Head \= Elem,
    replace(Tail, Elem, NewElem, ResultTail).


power([], [[]]).


power([H|T], PS) :-
    power(T, PS1),             
    add_elem(H, PS1, PS2),      
    append(PS1, PS2, PS).       


% Add Elem to each subset in Subsets
add_elem(_, [], []).
add_elem(Elem, [S|Ss], [[Elem|S]|Rs]) :-
    add_elem(Elem, Ss, Rs).
