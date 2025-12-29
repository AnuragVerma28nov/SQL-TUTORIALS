--# STORED PROCEDURES (Used in DDL, DML )

--1. Create a Simple Procedure
--Syntax
CREATE PROCEDURE procedure_name()
BEGIN
   -- SQL statements
END;
--Example (MySQL)
CREATE PROCEDURE get_all_students()
BEGIN
   SELECT * FROM students;
END;

--2. Procedure with Input Parameters
--Syntax
CREATE PROCEDURE procedure_name(IN param_name datatype)
BEGIN
   -- SQL statements using param_name
END;
--Example
CREATE PROCEDURE get_student_by_id(IN sid INT)
BEGIN
   SELECT * FROM students WHERE id = sid;
END;

--3. Procedure with Output Parameters
--Syntax
CREATE PROCEDURE procedure_name(OUT param_name datatype)
BEGIN
   -- Assign value to param_name
END;
--Example
CREATE PROCEDURE get_student_count(OUT total INT)
BEGIN
   SELECT COUNT(*) INTO total FROM students;
END;

--4. Procedure with Input and Output Parameters
--Syntax
CREATE PROCEDURE procedure_name(IN param1 datatype, OUT param2 datatype)
BEGIN
   -- SQL statements
END;
--Example
CREATE PROCEDURE get_student_name(IN sid INT, OUT sname VARCHAR(50))
BEGIN
   SELECT name INTO sname FROM students WHERE id = sid;
END;

--5. Call / Execute a Procedure
--Syntax
CALL procedure_name();
CALL procedure_name(param1, param2);
--Example
CALL get_all_students();
CALL get_student_by_id(2);
CALL get_student_name(2, @name);
SELECT @name;

--6. Drop a Procedure
--Syntax
DROP PROCEDURE procedure_name;
--Example
DROP PROCEDURE get_all_students;
