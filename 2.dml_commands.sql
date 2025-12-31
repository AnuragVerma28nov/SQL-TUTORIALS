-- DML COMMANDS

-- 1. INSERT
-- Syntax
INSERT INTO table_name(column_1,column_2,column_3),
VALUES(value_1,value_2,value_3);

-- 2. UPDATE
-- Syntax
UPDATE table_name
SET column_1 = value_1,
column_2 = value_2
WHERE condition;

-- 3. DELETE
-- Syntax
DELETE FROM table_name
WHERE condition;

--4. MERGE
--Syntax
MERGE INTO target_table t
USING source_table s
ON (t.id = s.id)

WHEN MATCHED THEN
  UPDATE SET t.column1 = s.column1

WHEN NOT MATCHED THEN
  INSERT (id, column1)
  VALUES (s.id, s.column1);




