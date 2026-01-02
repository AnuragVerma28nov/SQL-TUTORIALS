--# RENAME COMMAND

--1. Rename a Table
--Syntax
RENAME TABLE old_table_name TO new_table_name;
--Example
RENAME TABLE students TO student_details;

--2. Rename a Table (Using ALTER)
--Syntax
ALTER TABLE table_name
RENAME TO new_table_name;
--Example
ALTER TABLE students
RENAME TO student_details;

--3. Rename a Column
--Syntax
ALTER TABLE table_name
RENAME COLUMN old_column_name TO new_column_name;
--Example
ALTER TABLE students
RENAME COLUMN name TO student_name;

--4. Rename Constraint
--Syntax
ALTER TABLE table_name
RENAME CONSTRAINT old_constraint_name TO new_constraint_name;
--Example
ALTER TABLE students
RENAME CONSTRAINT pk_students_id TO pk_student_id;


