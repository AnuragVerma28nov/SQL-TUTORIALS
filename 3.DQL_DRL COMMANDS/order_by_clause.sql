--# ORDER BY CLAUSE 

--1. ORDER BY (Ascending – Default)
--Syntax
SELECT column_name
FROM table_name
ORDER BY column_name;
--Example
SELECT * FROM students
ORDER BY name;

--2. ORDER BY DESC (Descending)
--Syntax
SELECT column_name
FROM table_name
ORDER BY column_name DESC;
--Example
SELECT * FROM students
ORDER BY marks DESC;

--3. ORDER BY Multiple Columns
--Syntax
SELECT column1, column2
FROM table_name
ORDER BY column1 ASC, column2 DESC;
--Example
SELECT * FROM students
ORDER BY city ASC, age DESC;

--4. ORDER BY with WHERE
--Syntax
SELECT column_name
FROM table_name
WHERE condition
ORDER BY column_name;
--Example
SELECT * FROM students
WHERE age > 18
ORDER BY marks DESC;

--5. ORDER BY Column Position
--Syntax
SELECT column1, column2, column3
FROM table_name
ORDER BY column_position;
--Example
SELECT id, name, marks
FROM students
ORDER BY 3 DESC;
