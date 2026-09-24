leap_year(Year) :- Year mod 4 =:= 0, !.
leap_year(_) :- fail.