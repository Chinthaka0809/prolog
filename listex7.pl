% replace(+List, +Elem, +NewElem, -Result)

% Base case: empty list
replace([], _, _, []).

% If the head matches the element to replace, put NewElem in Result
replace([Elem|Tail], Elem, NewElem, [NewElem|ResultTail]) :-
    replace(Tail, Elem, NewElem, ResultTail).

% If the head is different, keep it unchanged
replace([Head|Tail], Elem, NewElem, [Head|ResultTail]) :-
    Head \= Elem,
    replace(Tail, Elem, NewElem, ResultTail).
