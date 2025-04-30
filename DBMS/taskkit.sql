CREATE DATABASE HospitalDB;

USE HospitalDB;
create table PatientDetail
(SR int AUTO_INCREMENT primary key,
NAME varchar(50) NOT NULL,
ADDRESS varchar(100),
MOBNO int,
Entry_date date,
Discharge_Date date,
DOCTOR varchar(50));

SELECT * FROM PatientDetail;

INSERT INTO PatientDetail
(SR, NAME, ADDRESS, MOBNO, Entry_Date, Discharge_Date, DOCTOR)
VALUES
(1, 'RAM', 'Vikas Nagar Lucknow', 8987766554, 01-07-2021, 01-07-2022, 'Dr. Prince'),
(2, 'SHIVAM', 'Cant Varanasi', NULL, 01-07-2021, 01-07-2022, 'Dr. Prince'),
(3, 'ANURAG', 'Mahanagar Lucknow', 8900766554, 01-07-2021, 01-07-2022, 'Dr. Meera'),
(4, 'MAHESH', 'Gomti Nagar Lucknow', 7987766554, 01-07-2021, 01-07-2022, 'Dr. Prince'),
(5, 'VIKAS', 'Patna', 8889776655, 01-07-2021, 01-07-2022, 'Dr. Prince');

DROP TABLE PatientDetail;

create table PatientDetail
(SR int AUTO_INCREMENT primary key,
NAME varchar(50) NOT NULL,
ADDRESS varchar(100),
MOBNO varchar(50),
Entry_date date,
Discharge_Date date,
DOCTOR varchar(50));

INSERT INTO PatientDetail
(SR, NAME, ADDRESS, MOBNO, Entry_date, Discharge_Date, DOCTOR)
VALUES
(1, 'RAM', 'Vikas Nagar Lucknow', '8987766554', '2021-07-01', '2022-07-01', 'Dr. Prince'),
(2, 'SHIVAM', 'Cant Varanasi', NULL, '2021-07-01', '2022-07-01', 'Dr. Prince'),
(3, 'ANURAG', 'Mahanagar Lucknow', '8900766554', '2021-07-01', '2022-07-01', 'Dr. Meera'),
(4, 'MAHESH', 'Gomti Nagar Lucknow', '7987766554', '2021-07-01', '2022-07-01', 'Dr. Prince'),
(5, 'VIKAS', 'Patna', '8889776655', '2021-07-01', '2022-07-01', 'Dr. Prince');

SELECT * FROM PatientDetail;


CREATE TABLE productdetails
(
SR int auto_increment primary KEY,
Product_name varchar(50),
Total int,
MRP int,
Salerate int,
Entrydate date
);

SELECT * FROM productdetails;

INSERT INTO productdetails
(SR, Product_name, Total, MRP, Salerate, Entrydate)
Values
(1, 'Hospital Beds', 3, 2000, 1500, '2021-09-01'),
(2, 'Trolley', 2, 3000, 2500, '2021-09-01'),
(3, 'Injcetion', 1, 200, 150, '2021-09-01'),
(4, 'Trolley', 4, 2000, 1500, '2021-08-01'),
(5, 'Dust Bin', 2, 100, 50, '2021-08-01'),
(6, 'Injection', 6, 300, 250, '2021-09-10');

SELECT * FROM productdetails;

ALTER TABLE productdetails MODIFY MRP varchar(50);
ALTER TABLE product MODIFY MRP int;
USE  HospitalDB;
ALTER TABLE productdetails CHANGE Salerate Saleprice int;
RENAME TABLE productdetails TO product;
SELECT * FROM product;






/*day 2 started*/

/* DAY 2.1 STARTED*/
SELECT MAX(MRP) AS HIghest_MRP
FROM product;

SELECT SUM(MRP) AS Total_MRP_of_Injections
FROM product
WHERE Product_name = "injection";

SELECT SUM(MRP) AS Total_MRP_of_Trolley
FROM product
WHERE Entrydate = "2021-09-01";

SELECT AVG(Saleprice) AS aveg_price_of_trolley_according_to_saleprice
FROM product
WHERE Product_name = "Trolley";

SELECT Product_name
FROM product
WHERE MRP = (SELECT MIN(MRP) FROM product);

SELECT SUM(Total) AS Number_of_Trolley
FROM product
WHERE Product_name = "Trolley";















/*DAY 2.2 STARTED*/
USE HospitalDB;

DROP TABLE PatientDetail;

create table PatientDetail
(SR int AUTO_INCREMENT primary key,
NAME varchar(50) NOT NULL,
ADDRESS varchar(100),
MOBNO varchar(50),
Entry_date date,
Discharge_Date date,
DOCTOR varchar(50));

INSERT INTO PatientDetail
(SR, NAME, ADDRESS, MOBNO, Entry_date, Discharge_Date, DOCTOR)
VALUES
(1, 'RAM', 'Vikas Nagar Lucknow', '8987766554', '2021-07-01', '2022-07-01', 'Dr. Prince'),
(2, 'SHIVAM', 'Cant Varanasi', NULL, '2021-07-01', '2022-07-01', 'Dr. Prince'),
(3, 'ANURAG', 'Mahanagar Lucknow', '8900766554', '2021-07-01', '2022-07-01', 'Dr. Meera'),
(4, 'MAHESH', 'Gomti Nagar Lucknow', '7987766554', '2021-07-01', '2022-07-01', 'Dr. Prince'),
(5, 'VIKAS', 'Patna', '8889776655', '2021-07-01', '2022-07-01', 'Dr. Prince'),
(6, 'MITA', 'Vikas Nagar Lucknow', '8987766554', '2021-07-03', NULL, 'Dr. Prince'),
(7, 'GITA', NULL, '8900766554', '2020-01-03', '2020-01-31', 'Dr. Meera'),
(8, 'SIYA', 'Lucknow', '9876655443', '2021-04-02', '2021-04-12', 'Dr. Prince'),
(9, 'RIYA', 'Patna', '7889766554', '2021-08-05', '2021-08-15','Dr. Shikhar'),
(10, 'Sandeep', NULL, NULL, '2021-05-05', '2021-05-15', 'Dr. Rajendra'),
(11, 'Mukul', 'Patna', NULL, '2021-09-01', '2021-09-06', 'Dr. Prince');

SELECT * FROM PatientDetail;

SELECT NAME FROM PatientDetail
WHERE NAME LIKE 'S%';

SELECT * FROM PatientDetail
WHERE MONTH(Entry_date) = 9 AND
YEAR(Entry_date) = 2021;

SELECT * FROM PatientDetail
WHERE MOBNO LIKE '7%';

SELECT * FROM PatientDetail
WHERE DOCTOR = 'Dr. Prince';

SELECT NAME ADDRESS FROM PatientDetail
WHERE ADDRESS = 'Lucknow';

SELECT * FROM PatientDetail
WHERE ADDRESS = 'Patna' and DOCTOR='Dr. Prince';

SELECT * FROM PatientDetail
WHERE ADDRESS ='Patna' OR 'Lucknow';

SELECT * FROM PatientDetail
WHERE ADDRESS = 'Patna' AND 
MONTH(Entry_date) = 9 AND
YEAR(Entry_date) = 2021;

DELETE  FROM PatientDetail 
WHERE DOCTOR ='Dr. Prince';
SET SQL_SAFE_UPDATES= 0;
SET SQL_SAFE_UPDATES= 1;



/*DAY 2.3 STARTED*/
CREATE TABLE Employee
(EMPLOYEE_ID INT auto_increment PRIMARY KEY,
FIRST_NAME VARCHAR(50),
HIRE_DATE DATE,
JOB_ID VARCHAR(50),
SALARY INT);

INSERT INTO Employee
(EMPLOYEE_ID, FIRST_NAME, HIRE_DATE, JOB_ID, SALARY)
VALUES
(100, 'Siya', '2012-06-06', 'IT_PROG', 50000),
(101, 'Satyam', '2017-08-09', 'SOFT_PROG', 20000),
(102, 'Saurabh', '2019-09-15', 'IT_PROG', 100000),
(103, 'Seema', '2012-06-06', 'IT_PROG', 80000),
(104, 'Shivam', '2019-08-15', 'IT_PROG', 200000),
(105, 'Sandhya', null, 'SOFT_PROG', 1000000),
(106, 'Shakshi', '2021-09-25', 'SOFT_PROG', 200000),
(107, 'Shilpa', null, 'SOFT_PROG', 60000),
(108, 'Shubham', '2019-08-15', 'IT_PROG', 33000);

SELECT * FROM Employee;

SELECT * FROM Employee
WHERE SALARY > 40000;

SELECT FIRST_NAME, JOB_ID,  HIRE_DATE
FROM Employee
WHERE HIRE_DATE < '2018-01-01';

SELECT * FROM Employee
WHERE JOB_ID = 'IT_PROG' AND
SALARY > 100000;

SELECT * FROM Employee
WHERE JOB_ID = 'IT_PROG' AND
HIRE_DATE > '2017-01-01';

SELECT * FROM Employee
WHERE SALARY  BETWEEN 20000 AND 100000;

SELECT * FROM Employee
WHERE FIRST_NAME LIKE 'Sh%';

SELECT *
FROM Employee
WHERE HIRE_DATE = NULL;

DELETE FROM Employee
WHERE SALARY <= 33000;

SET SQL_SAFE_UPDATES= 0;
SET SQL_SAFE_UPDATES= 1;

SELECT * FROM Employee;

DELETE FROM Employee
WHERE JOB_ID = 'IT_PROG' AND
HIRE_DATE > '2017-01-01';

DELETE FROM Employee
WHERE SALARY BETWEEN 20000 AND 60000
AND HIRE_DATE = NULL;



/*DAY 2 COMPLETED*/
/* DAY 3 STARTED*/

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

UPDATE Employees
SET SALARY = 50000
WHERE SALARY < 100000;

RENAME TABLE Employees TO Employees_Details;
SELECT * FROM Employees_Details;

TRUNCATE TABLE Employees_Details;

DROP TABLE Employees_Details;

USE HospitalDB;
CREATE TABLE Customer_Details
(Customer_id int auto_increment primary key,
Name varchar(50),
Address varchar(50),
Age int);

INSERT INTO Customer_Details
(Customer_id, Name, Address, Age)
VALUES
(1, 'Billie', 'NY', 22),
(2, 'Ellish', 'London', 19),
(3, 'Ariana', 'Miami', 18),
(4, 'Selena', 'New Jersey', 32),
(5, 'Kety', 'Hawaii', 42),
(6, 'Adele', 'Miami', 29);

RENAME TABLE Customer_Details TO Customer;

SET SQL_SAFE_UPDATES= 0;
UPDATE Customer
SET Name = 'PERRY'
WHERE Address = 'London' AND 
Age BETWEEN 18 AND 20; 

ALTER TABLE Customer;

DROP TABLE Customer;

SELECT * FROM Customer;