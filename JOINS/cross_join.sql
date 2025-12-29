--CROSS JOIN
--Returns Cartesian product (all combinations of rows)
--Syntax
SELECT a.column1, b.column2
FROM table1 a
CROSS JOIN table2 b;
--Example
SELECT students.name, courses.course_name
FROM students
CROSS JOIN courses;