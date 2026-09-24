% square/2 using between/3
% square(N, Char) prints an N x N square of Char.

square(N, Char) :-
    between(1, N, _),             % loop over rows
    ( between(1, N, _),           % loop over columns
      write(Char),
      fail                        % force backtracking through columns
    ; nl, fail                    % after a row ends, print newline
    ).
square(_, _).                     % succeed after all backtracking
