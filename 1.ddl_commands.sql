-- DDL COMMANDS

-- 1. CREATE
-- Syntax
CREATE DATABASE database_name;
CREATE TABLE table_name
(
column_1 datatype CONSTRAINT,
column_2 datatype CONSTRAINT,
column_3 datatype CONSTRAINT,
....
);

-- 2. ALTER
-- Syntax
ALTER TABLE table_name
ADD column_name datatype;

-- 3.TRUNCATE
-- Syntax
TRUNCATE TABLE table_name;

-- 4.DROP
-- Syntax
DROP TABLE table_name;
DROP DATABASE database_name;

-- 5.RENAME
-- Syntax
RENAME TABLE Table_Name To New_Table_Name;
RENAME DATABASE Database_Name To New_Database_Name;

-- 6.COMMENT
COMMENT ON TABLE table_name IS 'Comment';
COMMENT ON COLUMN table_name.column_name IS 'Comment';
