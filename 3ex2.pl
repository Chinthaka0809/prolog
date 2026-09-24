% square/2
% square(N, Char) prints an N x N square of Char.

square(N, Char) :-
    square_rows(N, N, Char).

% square_rows/3 prints N rows, each of length Cols
square_rows(0, _, _).
square_rows(Rows, Cols, Char) :-
    square_row(Cols, Char),
    nl,
    Rows1 is Rows - 1,
    square_rows(Rows1, Cols, Char).

% square_row/2 prints one row of Cols characters
square_row(0, _).
square_row(Cols, Char) :-
    write(Char),
    Cols1 is Cols - 1,
    square_row(Cols1, Char).