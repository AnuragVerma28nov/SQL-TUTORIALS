--# ROLLBACK TO SAVEPOINT 

--1. Create a Savepoint and Rollback to it
--Syntax
SAVEPOINT savepoint_name;
ROLLBACK TO savepoint_name;
--Example
INSERT INTO students (id, name, age) VALUES (1, 'Anurag', 20);
SAVEPOINT sp1;  -- create savepoint after first insert
INSERT INTO students (id, name, age) VALUES (2, 'Rahul', 21);
ROLLBACK TO sp1; -- cancels only the second insert, first insert remains

--2. Multiple Savepoints
--Syntax
SAVEPOINT sp1;
SAVEPOINT sp2;
ROLLBACK TO sp1; -- rollback to first savepoint
--Example
INSERT INTO students VALUES (3, 'Neha', 19);
SAVEPOINT sp1;
INSERT INTO students VALUES (4, 'Amit', 22);
SAVEPOINT sp2;
INSERT INTO students VALUES (5, 'Rohit', 20);
ROLLBACK TO sp1; -- cancels inserts after sp1 (Amit and Rohit), keeps Neha

--3. Rollback Entire Transaction (Optional)
--Syntax
ROLLBACK; -- cancels all changes including before savepoints
--Example
ROLLBACK; -- cancels all inserts including Neha

--4. Savepoint with Commit
--Syntax
SAVEPOINT sp_name;
-- SQL statements
ROLLBACK TO sp_name; -- optional
COMMIT; -- commits changes made before or after savepoint
--Example
INSERT INTO students VALUES (6, 'Simran', 21);
SAVEPOINT sp1;
INSERT INTO students VALUES (7, 'Karan', 23);
ROLLBACK TO sp1; -- cancels Karan only
COMMIT; -- commits Simran insert
