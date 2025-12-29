--LEFT JOIN (LEFT OUTER JOIN) COMMAND
--Returns all rows from left table, matching rows from right table
--Syntax
SELECT a.column1, b.column2
FROM table1 a
LEFT JOIN table2 b
ON a.common_column = b.common_column;
--Example
SELECT students.id, students.name, courses.course_name
FROM students
LEFT JOIN courses
ON students.course_id = courses.id;