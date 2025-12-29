--# COMMENT COMMAND 

--1. Add Comment on a Table
--Syntax
COMMENT ON TABLE table_name IS 'comment_text';
--Example
COMMENT ON TABLE students IS 'Stores student details';

--2. Add Comment on a Column
--Syntax
COMMENT ON COLUMN table_name.column_name IS 'comment_text';
--Example
COMMENT ON COLUMN students.name IS 'Student full name';

--3. Add Comment on a View
--Syntax
COMMENT ON VIEW view_name IS 'comment_text';
--Example
COMMENT ON VIEW student_view IS 'View for student data';

--4. Add Comment on a Constraint
--Syntax
COMMENT ON CONSTRAINT constraint_name ON table_name IS 'comment_text';
--Example
COMMENT ON CONSTRAINT pk_students_id ON students IS 'Primary key for students table';

--5. Remove a Comment
--Syntax
COMMENT ON TABLE table_name IS NULL;
--Example
COMMENT ON TABLE students IS NULL;
