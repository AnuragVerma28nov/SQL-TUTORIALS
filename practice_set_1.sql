CREATE DATABASE Empolyee;

USE Empolyee;

CREATE TABLE emp(
id INT PRIMARY KEY,
name VARCHAR(50),
salary INT NOT NULL
);

INSERT INTO Empolyee.emp(id, name, salary)
VALUES (3,"Anurag",5000),(4,"Amit",6000);

SELECT * FROM Empolyee.emp;