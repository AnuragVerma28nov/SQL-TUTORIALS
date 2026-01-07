--# SET TRANSACTION COMMAND

--1. Set Transaction Name / Identifier
--Syntax
SET TRANSACTION NAME 'transaction_name';
--Example
SET TRANSACTION NAME 'student_insert_txn';

--2. Set Transaction Isolation Level
--Syntax
SET TRANSACTION ISOLATION LEVEL isolation_level;
--Example
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

--Common Isolation Levels:
--READ UNCOMMITTED: Can read uncommitted changes (dirty reads)
--READ COMMITTED: Can only read committed data (default in many DBMS)
--REPEATABLE READ: Prevents non-repeatable reads
--SERIALIZABLE: Highest isolation, prevents all concurrency issues

--3. Set Transaction as Read-Only or Read-Write
--Syntax
SET TRANSACTION READ ONLY;
SET TRANSACTION READ WRITE;
--Example
SET TRANSACTION READ ONLY;  -- transaction will not modify data
SET TRANSACTION READ WRITE; -- transaction can modify data

--4. Begin Transaction with SET TRANSACTION
--Syntax
SET TRANSACTION ISOLATION LEVEL isolation_level;
BEGIN TRANSACTION;
-- SQL statements
COMMIT;
--Example
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
BEGIN TRANSACTION;
UPDATE students SET marks = marks + 5 WHERE id = 1;
COMMIT;


