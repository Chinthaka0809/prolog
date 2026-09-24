% distance/3
% distance((X1,Y1), (X2,Y2), D) is true if D is the Euclidean
% distance between point (X1,Y1) and (X2,Y2).

distance((X1,Y1), (X2,Y2), D) :-
    DX is X1 - X2,
    DY is Y1 - Y2,
    D is sqrt(DX*DX + DY*DY).
