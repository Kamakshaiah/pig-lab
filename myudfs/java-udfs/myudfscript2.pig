-- myscript2.pig

A = LOAD '../../students.txt' AS (name: chararray, age: int, gpa: float);
B = GROUP A BY name;
C = FOREACH B GENERATE group, COUNT(A);
DUMP C;
