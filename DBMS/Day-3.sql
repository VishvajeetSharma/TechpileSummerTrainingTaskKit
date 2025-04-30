-- ------------------------task 1------------------

USE hospital;


CREATE TABLE Employees
(employe_ID INT PRIMARY KEY,
FIRST_NAME VARCHAR(50),
LAST_NAME VARCHAR(50),
DEPARTMENT VARCHAR(50),
SALARY INT);

INSERT INTO	 Employees
(employe_ID, FIRST_NAME, LAST_NAME, DEPARTMENT, SALARY)
VALUES
(123, 'James', 'Smith', 'Accounting', 80000),
(234, 'Robert', 'Johnson', 'Sales', 100000),
(345, 'Mary', 'Williams', 'Marketing', 90000),
(456, 'Jon', 'Lee', 'Sales', 1200000),
(567, 'Patricia', 'Spade', 'Marketing', 110000);

SELECT * FROM Employees;

SET SQL_SAFE_UPDATES= 0;
UPDATE Employees
SET SALARY = 50000
WHERE SALARY < 100000;
SET SQL_SAFE_UPDATES= 1;

RENAME TABLE Employees TO Employees_Details;

SELECT * FROM Employees_Details;

TRUNCATE TABLE Employees_Details;

DROP TABLE Employees_Details;


-- -------------------task 2-------------------

CREATE TABLE Customer_Details
(Customer_id int auto_increment primary key,
Name varchar(50),
Address varchar(50),
Age int);

INSERT INTO Customer_Details
(Name, Address, Age)
VALUES
( 'Billie', 'NY', 22),
( 'Ellish', 'London', 19),
( 'Ariana', 'Miami', 18),
('Selena', 'New Jersey', 32),
( 'Kety', 'Hawaii', 42),
('Adele', 'Miami', 29);

RENAME TABLE Customer_Details TO Customer;

SET SQL_SAFE_UPDATES= 0;
UPDATE Customer
SET Name = 'PERRY'
WHERE Address = 'London' AND 
Age BETWEEN 18 AND 20; 
SET SQL_SAFE_MODE= 1;

TRUNCATE TABLE Customer;

DROP TABLE Customer;
