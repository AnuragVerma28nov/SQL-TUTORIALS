--# MERGE COMMAND 

--1. MERGE using Source Table
--Syntax
MERGE INTO target_table t
USING source_table s
ON (condition)
WHEN MATCHED THEN
    UPDATE SET column1 = value1,
               column2 = value2
WHEN NOT MATCHED THEN
    INSERT (column1, column2)
    VALUES (value1, value2);

--Example
MERGE INTO students t
USING new_students s
ON (t.id = s.id)
WHEN MATCHED THEN
    UPDATE SET t.name = s.name,
               t.age  = s.age
WHEN NOT MATCHED THEN
    INSERT (id, name, age)
    VALUES (s.id, s.name, s.age);

--2. MERGE using SELECT (Source Query)
--Syntax
MERGE INTO target_table t
USING (SELECT id, name FROM temp_students) s
ON (t.id = s.id)
WHEN MATCHED THEN
    UPDATE SET t.name = s.name
WHEN NOT MATCHED THEN
    INSERT (id, name)
    VALUES (s.id, s.name);

--3. MERGE with DELETE
--Syntax
MERGE INTO target_table t
USING source_table s
ON (t.id = s.id)
WHEN MATCHED THEN
    UPDATE SET t.status = s.status
    DELETE WHERE s.status = 'Inactive';
