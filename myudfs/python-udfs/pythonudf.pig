Register 'test.py' using streaming_python as myfuncs;

a = load '../../students.txt' using PigStorage() as (name:chararray, age:int, gpa:chararray); 
dump a; 
b = foreach a generate myfuncs.concat(a.name);
dump b; 
