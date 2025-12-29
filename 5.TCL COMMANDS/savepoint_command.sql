--# SAVEPOINT COMMAND (TCL – Transaction Control Language)

--1. Create a Savepoint
--Syntax
SAVEPOINT savepoint_name;
--Example
SAVEPOINT sp1;

--2. Rollback to a Savepoint
--Syntax
ROLLBACK TO savepoint_name;
--Example
INSERT INTO students (id, name, age) VALUES (1, 'Anurag', 20);
SAVEPOINT sp1;
INSERT INTO students (id, name, age) VALUES (2, 'Rahul', 21);
ROLLBACK TO sp1; -- cancels only the last insert

--3. Release a Savepoint (DBMS dependent)
--Syntax
RELEASE SAVEPOINT savepoint_name;
--Example
RELEASE SAVEPOINT sp1;

--4. Savepoint with Multiple Transactions
--Syntax
BEGIN TRANSACTION;
-- SQL statements
SAVEPOINT sp_name;
-- SQL statements
ROLLBACK TO sp_name; -- optional
COMMIT;
--Example
BEGIN TRANSACTION;
INSERT INTO students VALUES (3, 'Neha', 19);
SAVEPOINT sp1;
INSERT INTO students VALUES (4, 'Amit', 22);
ROLLBACK TO sp1; -- cancels only last insert
COMMIT; -- commits earlier insert
