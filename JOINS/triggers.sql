--# TRIGGERS (Used in DML, DDL)

--1. Create a Trigger (Basic Syntax)
--Syntax
CREATE TRIGGER trigger_name
{BEFORE | AFTER} {INSERT | UPDATE | DELETE}
ON table_name
FOR EACH ROW
BEGIN
   -- SQL statements
END;
--Example 
CREATE TRIGGER before_student_insert
BEFORE INSERT ON students
FOR EACH ROW
BEGIN
   SET NEW.created_at = NOW();
END;

--2. AFTER INSERT Trigger
--Syntax
CREATE TRIGGER trigger_name
AFTER INSERT
ON table_name
FOR EACH ROW
BEGIN
   -- SQL statements
END;
--Example
CREATE TRIGGER after_student_insert
AFTER INSERT ON students
FOR EACH ROW
BEGIN
   INSERT INTO student_log(student_id, action)
   VALUES (NEW.id, 'INSERT');
END;

--3. BEFORE UPDATE Trigger
--Syntax
CREATE TRIGGER trigger_name
BEFORE UPDATE
ON table_name
FOR EACH ROW
BEGIN
   -- SQL statements
END;
--Example
CREATE TRIGGER before_student_update
BEFORE UPDATE ON students
FOR EACH ROW
BEGIN
   SET NEW.updated_at = NOW();
END;

--4. AFTER DELETE Trigger
--Syntax
CREATE TRIGGER trigger_name
AFTER DELETE
ON table_name
FOR EACH ROW
BEGIN
   -- SQL statements
END;
--Example
CREATE TRIGGER after_student_delete
AFTER DELETE ON students
FOR EACH ROW
BEGIN
   INSERT INTO student_log(student_id, action)
   VALUES (OLD.id, 'DELETE');
END;

--5. Drop a Trigger
--Syntax
DROP TRIGGER trigger_name;
--Example
DROP TRIGGER before_student_insert;
