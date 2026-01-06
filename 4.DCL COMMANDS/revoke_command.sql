--# REVOKE COMMAND 

--1. Revoke Privileges from a User
--Syntax
REVOKE privilege_name
ON table_name
FROM user_name;
--Example
REVOKE INSERT
ON students
FROM anurag;

--2. Revoke Multiple Privileges
--Syntax
REVOKE privilege1, privilege2
ON table_name
FROM user_name;
--Example
REVOKE SELECT, UPDATE
ON students
FROM anurag;

--3. Revoke All Privileges
--Syntax
REVOKE ALL
ON table_name
FROM user_name;
--Example
REVOKE ALL
ON students
FROM anurag;

--4. Revoke GRANT OPTION
--Syntax
REVOKE GRANT OPTION FOR privilege_name
ON table_name
FROM user_name;
--Example
REVOKE GRANT OPTION FOR SELECT
ON students
FROM anurag;

--5. Revoke Role from User (DBMS dependent)
--Syntax
REVOKE role_name
FROM user_name;
--Example
REVOKE admin_role
FROM anurag;


