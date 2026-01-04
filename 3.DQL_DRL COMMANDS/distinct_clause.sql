--# DISTINCT CLAUSE 

--1. DISTINCT with Single Column
--Syntax
SELECT DISTINCT column_name
FROM table_name;
--Example
SELECT DISTINCT city
FROM students;

--2. DISTINCT with Multiple Columns
--Syntax
SELECT DISTINCT column1, column2
FROM table_name;
--Example
SELECT DISTINCT city, age
FROM students;

--3. DISTINCT with WHERE Clause
--Syntax
SELECT DISTINCT column_name
FROM table_name
WHERE condition;
--Example
SELECT DISTINCT city
FROM students
WHERE age > 18;

--4. DISTINCT with COUNT (Aggregate Function)
--Syntax
SELECT COUNT(DISTINCT column_name)
FROM table_name;
--Example
SELECT COUNT(DISTINCT city)
FROM students;

