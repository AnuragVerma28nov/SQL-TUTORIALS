--# GRANT COMMAND

--1. Grant Privileges on a Database
--Syntax
GRANT privilege_name
ON DATABASE database_name
TO user_name;
--Example
GRANT ALL
ON DATABASE school_db
TO anurag;

--2. Grant Privileges on a Table
--Syntax
GRANT privilege_name
ON table_name
TO user_name;
--Example
GRANT SELECT, INSERT
ON students
TO anurag;

--3. Grant All Privileges on a Table
--Syntax
GRANT ALL
ON table_name
TO user_name;
--Example
GRANT ALL
ON students
TO anurag;

--4. Grant Privileges with GRANT OPTION
--Syntax
GRANT privilege_name
ON table_name
TO user_name
WITH GRANT OPTION;
--Example
GRANT SELECT
ON students
TO anurag
WITH GRANT OPTION;

--5. Grant Role to User (DBMS dependent)
--Syntax
GRANT role_name
TO user_name;
--Example
GRANT admin_role
TO anurag;


