--# GROUP BY CLAUSE 

--1. GROUP BY Single Column
--Syntax
SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name;
--Example
SELECT city, COUNT(*)
FROM students
GROUP BY city;

--2. GROUP BY Multiple Columns
--Syntax
SELECT column1, column2, aggregate_function(column_name)
FROM table_name
GROUP BY column1, column2;
--Example
SELECT city, age, COUNT(*)
FROM students
GROUP BY city, age;

--3. GROUP BY with WHERE
--Syntax
SELECT column_name, aggregate_function(column_name)
FROM table_name
WHERE condition
GROUP BY column_name;
--Example
SELECT city, AVG(marks)
FROM students
WHERE age > 18
GROUP BY city;

--4. GROUP BY with HAVING
--Syntax
SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name
HAVING condition;
--Example
SELECT city, COUNT(*)
FROM students
GROUP BY city
HAVING COUNT(*) > 2;

--5. GROUP BY with ORDER BY
--Syntax
SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name
ORDER BY aggregate_function(column_name) DESC;
--Example
SELECT city, COUNT(*)
FROM students
GROUP BY city
ORDER BY COUNT(*) DESC;
