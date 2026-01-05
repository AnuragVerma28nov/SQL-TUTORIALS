--# WHERE CLAUSE

--1. WHERE with SELECT
--Syntax
SELECT column_name
FROM table_name
WHERE condition;
--Example
SELECT * FROM students
WHERE age = 20;

--2. WHERE with UPDATE
--Syntax
UPDATE table_name
SET column_name = value
WHERE condition;
--Example
UPDATE students
SET city = 'Delhi'
WHERE id = 1;

--3. WHERE with DELETE
--Syntax
DELETE FROM table_name
WHERE condition;
--Example
DELETE FROM students
WHERE marks < 40;

--4. WHERE with AND operator
--Syntax
SELECT * FROM table_name
WHERE condition1 AND condition2;
--Example
SELECT * FROM students
WHERE age > 18 AND city = 'Mumbai';

--5. WHERE with OR operator
--Syntax
SELECT * FROM table_name
WHERE condition1 OR condition2;
--Example
SELECT * FROM students
WHERE city = 'Delhi' OR city = 'Pune';

--6. WHERE with NOT operator
--Syntax
SELECT * FROM table_name
WHERE NOT condition;
--Example
SELECT * FROM students
WHERE NOT city = 'Delhi';

--7. WHERE with IN
--Syntax
SELECT * FROM table_name
WHERE column_name IN (value1, value2);
--Example
SELECT * FROM students
WHERE city IN ('Delhi', 'Mumbai');

--8. WHERE with BETWEEN
--Syntax
SELECT * FROM table_name
WHERE column_name BETWEEN value1 AND value2;
--Example
SELECT * FROM students
WHERE age BETWEEN 18 AND 25;

--9. WHERE with LIKE
--Syntax
SELECT * FROM table_name
WHERE column_name LIKE pattern;
--Example
SELECT * FROM students
WHERE name LIKE 'A%';

--10. WHERE with IS NULL
--Syntax
SELECT * FROM table_name
WHERE column_name IS NULL;
--Example
SELECT * FROM students
WHERE email IS NULL;

