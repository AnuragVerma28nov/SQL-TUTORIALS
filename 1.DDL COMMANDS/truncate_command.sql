--# TRUNCATE COMMAND

--1. Truncate a Table
--Syntax
TRUNCATE TABLE table_name;
--Example
TRUNCATE TABLE students;

--2. Truncate Multiple 
--Syntax
TRUNCATE TABLE table1, table2;     
--Example
TRUNCATE TABLE students, teachers;

--3. Truncate Table with Identity Reset
--Syntax 
TRUNCATE TABLE table_name;
--Example
TRUNCATE TABLE students;

--4. Truncate Table
--Syntax
TRUNCATE TABLE schema_name.table_name;
--Example
TRUNCATE TABLE school.students;

--5. Truncate Table with CASCADE
--Syntax
TRUNCATE TABLE table_name CASCADE;
--Example
TRUNCATE TABLE students CASCADE;

