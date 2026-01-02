--# DROP COMMAND 

--1. Drop a Database
--Syntax
DROP DATABASE database_name;
Example:
DROP DATABASE school_db;

--2. Drop a Table
--Syntax
DROP TABLE table_name;
--Example:
DROP TABLE students;

--3. Drop a Table (If Exists)
--Syntax
DROP TABLE IF EXISTS table_name;
--Example:
DROP TABLE IF EXISTS students;

--4. Drop a Column
--Syntax
ALTER TABLE table_name
DROP column_name;
--Example
ALTER TABLE students
DROP student_age;

--5. Drop Constraint
--Syntax
ALTER TABLE table_name
DROP CONSTRAINT constraint_name;
--Example
ALTER TABLE students
DROP CONSTRAINT pk_students_id;;

