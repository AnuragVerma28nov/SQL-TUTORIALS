--# ROLLBACK COMMAND (TCL – Transaction Control Language)

--1. Rollback Entire Transaction
--Syntax
ROLLBACK;
--Example
INSERT INTO students (id, name, age) VALUES (1, 'Anurag', 20);
ROLLBACK; -- cancels the above insert

--2. Rollback to Savepoint
--Syntax
ROLLBACK TO savepoint_name;
--Example
SAVEPOINT sp1;
INSERT INTO students (id, name, age) VALUES (2, 'Rahul', 21);
ROLLBACK TO sp1; -- cancels only last insert, keeps earlier changes

--3. Rollback Multiple Statements
--Syntax
BEGIN TRANSACTION;
-- SQL statements
ROLLBACK;
--Example
BEGIN TRANSACTION;
UPDATE students SET age = 22 WHERE id = 1;
DELETE FROM students WHERE id = 4;
ROLLBACK; -- cancels both update and delete

--4. Rollback in Error Handling
--Syntax (DBMS dependent)
BEGIN TRANSACTION;
-- SQL statements
IF ERROR THEN
    ROLLBACK;
ELSE
    COMMIT;
--Example
BEGIN TRANSACTION;
UPDATE students SET age = 23 WHERE id = 2;
-- error occurs
ROLLBACK;
