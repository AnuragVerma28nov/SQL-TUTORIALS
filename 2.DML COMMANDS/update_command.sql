--# UPDATE COMMAND

--1. Update All Rows
--Syntax
UPDATE table_name
SET column_name = value;
--Example
UPDATE students
SET city = 'Delhi';

--2. Update Specific Rows (Using WHERE)
--Syntax
UPDATE table_name
SET column_name = value
WHERE condition;
--Example
UPDATE students
SET city = 'Mumbai'
WHERE id = 1;

--3. Update Multiple Columns
--Syntax
UPDATE table_name
SET column1 = value1,
    column2 = value2
WHERE condition;
--Example
UPDATE students
SET age = 21,
    city = 'Pune'
WHERE id = 2;

--4. Update Using Another Table
--Syntax
UPDATE table_name
SET column_name = (SELECT column_name FROM another_table WHERE condition)
WHERE condition;
--Example
UPDATE students
SET grade = (SELECT grade FROM results WHERE results.id = students.id)
WHERE id = 3;

--5. Update with Arithmetic Operation
--Syntax
UPDATE table_name
SET column_name = column_name + value
WHERE condition;
--Example
UPDATE students
SET marks = marks + 5
WHERE class = 10;
