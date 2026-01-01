-- # CREATE COMMAND 

--1. Create Database
--Syntax
CREATE DATABASE db_name;
CREATE DATABASE IF NOT EXISTS db_name;  --Checking Existance of database
--Example
CREATE DATABASE sqltutorials;

--2. Create Table 
-- Syntax
CREATE TABLE TableName(
    column_name1 DATATYPE CONSTRAINT,
    column_name1 DATATYPE CONSTRAINT,
    );
-- Example:
CREATE TABLE Student(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    );

