marks(john, 80, 90, 70).
marks(mary, 75, 25, 55).
marks(alan, 30, 50, 10).

total_marks(Student, Total) :-
    marks(Student, M1, M2, M3),
    Total is M1 + M2 + M3.

average_marks(Student, Average) :-
    marks(Student, M1, M2, M3),
    Total is M1 + M2 + M3,
    Average is Total / 3.
