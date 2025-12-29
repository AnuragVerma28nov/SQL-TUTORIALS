--# COMMIT COMMAND

--1. Commit Current Transaction
--Syntax
COMMIT;
--Example
INSERT INTO students (id, name, age)
VALUES (1, 'Anurag', 20);
COMMIT;

--2. Commit with Savepoint (Optional)
--Syntax
SAVEPOINT savepoint_name;
--Example
SAVEPOINT sp1;

--3. Commit after Partial Transactions (Using Savepoint)
--Syntax
ROLLBACK TO savepoint_name; -- optional
COMMIT;
--Example
INSERT INTO students (id, name, age) VALUES (2, 'Rahul', 21);
SAVEPOINT sp1;
INSERT INTO students (id, name, age) VALUES (3, 'Neha', 19);
ROLLBACK TO sp1; -- cancels only last insert
COMMIT; -- commits changes before savepoint

--4. Commit Multiple Statements
--Syntax
BEGIN TRANSACTION;
-- SQL statements
COMMIT;
--Example
BEGIN TRANSACTION;
UPDATE students SET age = 21 WHERE id = 1;
DELETE FROM students WHERE id = 4;
COMMIT;
