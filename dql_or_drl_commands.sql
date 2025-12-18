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

-- 3. SELECT with ORDER BY
SELECT first_name, hire_date
FROM employees
ORDER BY hire_date DESC;

-- 4. SELECT with GROUP BY and HAVING
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;




