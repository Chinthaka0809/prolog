membership(Element, [Element | _]).     % Case when Element is the head of the list

membership(Element, [_ | Tail]) :-      % Recursive case: check the rest of the list
    membership(Element, Tail).
