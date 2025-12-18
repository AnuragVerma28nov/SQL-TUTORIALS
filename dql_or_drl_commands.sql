-- Syntax
SELECT column1, column2, ...
FROM table_name
[WHERE condition]
[GROUP BY column]
[HAVING condition]
[ORDER BY column ASC|DESC]
[LIMIT number];

-- 1. Basic SELECT
SELECT first_name, last_name
FROM employees;

-- 2. SELECT with WHERE
SELECT *
FROM employees
WHERE department = 'Sales';

-- 3. SELECT with DISTINCT
SELECT DISTINCT department
FROM employees;

-- 4. SELECT with LIKE
SELECT column_name
FROM table_name
WHERE column_name LIKE pattern; (%@gmail.com, %mobile%, _A, A_)

-- 5. SELECT with IN
SELECT column1, column2
FROM table_name
WHERE column_name IN (value1, value2, value3);

-- 6. SELECT with BETWEEN
SELECT column1, column2
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
                
-- 7. SELECT with NOT BETWEEN
SELECT column1, column2
FROM table_name
WHERE column_name NOT BETWEEN value1 AND value2;

-- 8. SELECT with NOT NULL
SELECT column1, column2
FROM table_name
WHERE column_name IS NOT NULL;

-- 9. SELECT with AS
SELECT column_name AS alternate_name
FROM table_name;

-- 10. SELECT with ORDER BY
SELECT column1, column2
FROM table_name
ORDER BY column_name ASC/DESC;

-- 11. SELECT with GROUP BY
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;




