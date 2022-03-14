-- myscript.pig
REGISTER '../../myudfs.jar';
A = LOAD '../../students.txt' AS (name: chararray, age: int, gpa: float);
B = FOREACH A GENERATE myudfs.UPPER(name);
DUMP B;
