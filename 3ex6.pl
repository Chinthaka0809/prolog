% Case 1: If lower > upper, return an empty list
range(Low, High, []) :-
    Low > High.

% Case 2: If lower =< upper, build the range recursively
range(Low, High, [Low|Rest]) :-
    Low =< High,
    Next is Low + 1,
    range(Next, High, Rest).