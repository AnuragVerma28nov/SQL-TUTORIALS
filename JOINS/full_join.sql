--FULL OUTER JOIN
--Returns all rows from both tables, with NULLs for non-matching rows
--Syntax
SELECT a.column1, b.column2
FROM table1 a
FULL OUTER JOIN table2 b
ON a.common_column = b.common_column;
--Example
SELECT students.id, students.name, courses.course_name
FROM students
FULL OUTER JOIN courses
ON students.course_id = courses.id;

