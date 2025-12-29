--# DELETE COMMAND

--1. Delete All Rows from a Table
--Syntax
DELETE FROM table_name;
--Example
DELETE FROM students;

--2. Delete Specific Rows (Using WHERE)
--Syntax
DELETE FROM table_name
WHERE condition;
--Example
DELETE FROM students
WHERE id = 3;

--3. Delete Multiple Rows
--Syntax
DELETE FROM table_name
WHERE column_name IN (value1, value2);
--Example
DELETE FROM students
WHERE id IN (4, 5);

--4. Delete with Subquery
--Syntax
DELETE FROM table_name
WHERE column_name IN (SELECT column_name FROM another_table WHERE condition);
--Example
DELETE FROM students
WHERE id IN (SELECT id FROM failed_students);

--5. Delete with JOIN 
--Syntax
DELETE s
FROM students s
JOIN attendance a ON s.id = a.id
WHERE a.status = 'Absent';
