--# INDEXES (Used in DML, DDL)

--1. Create a Simple Index
--Syntax
CREATE INDEX index_name
ON table_name(column_name);
--Example
CREATE INDEX idx_student_name
ON students(name);

--2. Create a Unique Index
--Syntax
CREATE UNIQUE INDEX index_name
ON table_name(column_name);
--Example
CREATE UNIQUE INDEX idx_student_id
ON students(id);

--3. Create a Composite Index (Multiple Columns)
--Syntax
CREATE INDEX index_name
ON table_name(column1, column2);
--Example
CREATE INDEX idx_student_city_age
ON students(city, age);

--4. Drop an Index
--Syntax
DROP INDEX index_name ON table_name; -- MySQL
--Example
DROP INDEX idx_student_name ON students;

--5. Create Index with Condition 
--Syntax 
CREATE INDEX index_name
ON table_name(column_name)
WHERE condition;
--Example
CREATE INDEX idx_active_students
ON students(name)
WHERE status = 'Active';
