--# ALTER COMMAND 

--1. Add a New Column
--Syntax
ALTER TABLE table_name
ADD column_name datatype;
--Example
ALTER TABLE students
ADD age INT;

--2. Change Column Datatype
--Syntax 
ALTER TABLE table_name
MODIFY column_name new_datatype;
--Example
ALTER TABLE students
MODIFY age VARCHAR(3);

--3. Rename a Column
--Syntax 
ALTER TABLE table_name
RENAME COLUMN old_name TO new_name;
--Example
ALTER TABLE students
RENAME COLUMN age TO student_age;

--4 Add Constraint
--Syntax 
ALTER TABLE table_name
ADD CONSTRAINT constraint_name constraint_type (column_name);
--Example (Primary Key)
ALTER TABLE students
ADD CONSTRAINT pk_id PRIMARY KEY (id);
