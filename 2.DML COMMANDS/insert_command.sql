--# INSERT COMMAND 

--1. Insert Values into All Columns
--Syntax
INSERT INTO table_name
VALUES (value1, value2, value3, ...);
--Example
INSERT INTO students
VALUES (1, 'Anurag', 20, 'basti');

--2. Insert Values into Specific Columns
--Syntax
INSERT INTO table_name (column1, column2, column3)
VALUES (value1, value2, value3);
--Example
INSERT INTO students (id, name, age)
VALUES (2, 'Rahul', 21);

--3. Insert Multiple Rows
--Syntax
INSERT INTO table_name (column1, column2)
VALUES
(value1, value2),
(value3, value4);
--Example
INSERT INTO students (id, name)
VALUES
(3, 'Amit'),
(4, 'Neha');

--4. Insert Data from Another Table
--Syntax
INSERT INTO table_name (column1, column2)
SELECT column1, column2 FROM another_table;
--Example
INSERT INTO passed_students (id, name)
SELECT id, name FROM students WHERE marks >= 40;

--5. Insert with DEFAULT Value
--Syntax
INSERT INTO table_name (column1, column2)
VALUES (value1, DEFAULT);
--Example
INSERT INTO students (id, city)
VALUES (5, DEFAULT);

