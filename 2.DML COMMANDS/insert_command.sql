--Insert Command

--1.Syntax
INSERT INTO TableName(Col1,Col2)
VALUES (VAL1,VAL2),(VAL1,VAL2);

--Example
INSERT INTO student(id,name)
VALUES (1,"Anurag"),(2,"Amit");

--2.Syntax
 INSERT INTO Database.TableName(Col1,Col2)
VALUES (VAL1,VAL2),(VAL1,VAL2);

--Example
INSERT INTO StudentInfo.student
VALUES (3,"Anurag"),(4,"Amit");