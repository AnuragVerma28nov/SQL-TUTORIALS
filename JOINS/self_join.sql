--SELF JOIN
--Join table with itself
--Syntax
SELECT a.column1, b.column2
FROM table_name a, table_name b
WHERE a.common_column = b.common_column;
--Example
SELECT e1.name AS Employee, e2.name AS Manager
FROM employees e1, employees e2
WHERE e1.manager_id = e2.id;