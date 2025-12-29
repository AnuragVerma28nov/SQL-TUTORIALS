--INNER JOIN COMMAND
--Returns only matching rows from both tables
--Syntax
SELECT a.column1, b.column2
FROM table1 a
INNER JOIN table2 b
ON a.common_column = b.common_column;
--Example
SELECT students.id, students.name, courses.course_name
FROM students
INNER JOIN courses
ON students.course_id = courses.id;