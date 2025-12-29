--# VIEWS (Used in DQL,DDL )

--1. Create a Simple View
--Syntax
CREATE VIEW view_name AS
SELECT column1, column2
FROM table_name
WHERE condition;
--Example
CREATE VIEW student_view AS
SELECT id, name, age
FROM students
WHERE age > 18;

--2. Create a View with Join
--Syntax
CREATE VIEW view_name AS
SELECT a.column1, b.column2
FROM table1 a
JOIN table2 b
ON a.common_column = b.common_column;
--Example
CREATE VIEW student_course_view AS
SELECT s.id, s.name, c.course_name
FROM students s
INNER JOIN courses c
ON s.course_id = c.id;

--3. Select Data from a View
--Syntax
SELECT * FROM view_name;
--Example
SELECT * FROM student_view;

--4. Update / Insert / Delete Using a View (Updatable View)
--Syntax
UPDATE view_name
SET column_name = value
WHERE condition;
--Example
UPDATE student_view
SET age = 21
WHERE id = 1;

--5. Drop a View
--Syntax
DROP VIEW view_name;
--Example
DROP VIEW student_view;

--6. Replace / Modify a View
--Syntax (DBMS dependent)
CREATE OR REPLACE VIEW view_name AS
SELECT column1, column2
FROM table_name
WHERE condition;
--Example
CREATE OR REPLACE VIEW student_view AS
SELECT id, name, age, city
FROM students;
