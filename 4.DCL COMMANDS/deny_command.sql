--# DENY COMMAND

--1. Deny Privilege on a Table
--Syntax
DENY privilege_name
ON table_name
TO user_name;
--Example
DENY SELECT
ON students
TO anurag;

--2. Deny Multiple Privileges
--Syntax
DENY privilege1, privilege2
ON table_name
TO user_name;
--Example
DENY INSERT, UPDATE
ON students
TO anurag;

--3. Deny All Privileges on a Table
--Syntax
DENY ALL
ON table_name
TO user_name;
--Example
DENY ALL
ON students
TO anurag;

--4. Deny Execute Permission on Stored Procedure
--Syntax
DENY EXECUTE
ON procedure_name
TO user_name;
--Example
DENY EXECUTE
ON update_student_marks
TO anurag;

--5. Deny Privilege on Schema
--Syntax
DENY privilege_name
ON SCHEMA::schema_name
TO user_name;
--Example
DENY SELECT
ON SCHEMA::school
TO anurag;
