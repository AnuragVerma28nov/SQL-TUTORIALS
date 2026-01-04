--# AGGREGATE FUNCTIONS 

--1. COUNT()
--Syntax
SELECT COUNT(column_name)
FROM table_name;
--Example
SELECT COUNT(id)
FROM students;

--2. SUM()
--Syntax
SELECT SUM(column_name)
FROM table_name;
--Example
SELECT SUM(marks)
FROM students;

--3. AVG()
--Syntax
SELECT AVG(column_name)
FROM table_name;
--Example
SELECT AVG(marks)
FROM students;

--4. MAX()
--Syntax
SELECT MAX(column_name)
FROM table_name;
--Example
SELECT MAX(marks)
FROM students;

--5. MIN()
--Syntax
SELECT MIN(column_name)
FROM table_name;
--Example
SELECT MIN(marks)
FROM students;


--6. COUNT(DISTINCT)
--Syntax
SELECT COUNT(DISTINCT column_name)
FROM table_name;
--Example
SELECT COUNT(DISTINCT city)
FROM students;


--7. Aggregate Functions with GROUP BY
--Syntax
SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name;
--Example
SELECT city, AVG(marks)
FROM students
GROUP BY city;


