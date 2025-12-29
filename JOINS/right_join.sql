--RIGHT JOIN (RIGHT OUTER JOIN)
--Returns all rows from right table, matching rows from left table
--Syntax
SELECT a.column1, b.column2
FROM table1 a
RIGHT JOIN table2 b
ON a.common_column = b.common_column;
--Example
SELECT students.id, students.name, courses.course_name
FROM students
RIGHT JOIN courses
ON students.course_id = courses.id;