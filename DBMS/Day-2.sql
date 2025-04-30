-- ------------------task 1-------------
USE hospital;

SELECT MAX(MRP) AS HIghest_MRP
FROM products;

SELECT SUM(MRP) AS Total_MRP_of_Injections
FROM products
WHERE Product_name = "injection";

SELECT SUM(MRP) AS Total_MRP_of_Trolley
FROM products
WHERE Entry_Date = "2021-09-01";

SELECT AVG(Saleprice) AS aveg_price_of_trolley_according_to_saleprice
FROM products
WHERE Product_name = "Trolley";

SELECT Product_name
FROM products
WHERE MRP = (SELECT MIN(MRP) FROM products);

SELECT SUM(Total) AS Number_of_Trolley
FROM products
WHERE Product_name = "Trolley";

-- ----------------Task 2------------------------


INSERT INTO Patientdetails
(NAME, ADDRESS, MOBILE, Entry_date, Discharge_Date, DOCTOR)
VALUES
( 'RAM', 'Vikas Nagar Lucknow', '8987766554', '2021-07-01', '2022-07-01', 'Dr. Prince'),
( 'SHIVAM', 'Cant Varanasi', NULL, '2021-07-01', '2022-07-01', 'Dr. Prince'),
( 'ANURAG', 'Mahanagar Lucknow', '8900766554', '2021-07-01', '2022-07-01', 'Dr. Meera'),
( 'MAHESH', 'Gomti Nagar Lucknow', '7987766554', '2021-07-01', '2022-07-01', 'Dr. Prince'),
( 'VIKAS', 'Patna', '8889776655', '2021-07-01', '2022-07-01', 'Dr. Prince'),
( 'MITA', 'Vikas Nagar Lucknow', '8987766554', '2021-07-03', NULL, 'Dr. Prince'),
( 'GITA', NULL, '8900766554', '2020-01-03', '2020-01-31', 'Dr. Meera'),
( 'SIYA', 'Lucknow', '9876655443', '2021-04-02', '2021-04-12', 'Dr. Prince'),
( 'RIYA', 'Patna', '7889766554', '2021-08-05', '2021-08-15','Dr. Shikhar'),
( 'Sandeep', NULL, NULL, '2021-05-05', '2021-05-15', 'Dr. Rajendra'),
( 'Mukul', 'Patna', NULL, '2021-09-01', '2021-09-06', 'Dr. Prince');



SELECT * FROM PatientDetails;

SELECT NAME FROM PatientDetails
WHERE NAME LIKE 'S%';

SELECT * FROM PatientDetails
WHERE MONTH(Entry_date) = 9 AND
YEAR(Entry_date) = 2021;

SELECT * FROM PatientDetails
WHERE MOBILE LIKE '7%';

SELECT * FROM PatientDetails
WHERE DOCTOR = 'Dr. Prince';

SELECT NAME ADDRESS FROM PatientDetails
WHERE ADDRESS = 'Lucknow';

SELECT * FROM PatientDetails
WHERE ADDRESS = 'Patna' and DOCTOR='Dr. Prince';

SELECT * FROM PatientDetails
WHERE ADDRESS ='Patna' OR ADDRESS = 'Lucknow';

SELECT * FROM PatientDetails
WHERE ADDRESS = 'Patna' AND 
MONTH(Entry_date) = 9 AND
YEAR(Entry_date) = 2021;

SET SQL_SAFE_UPDATES= 0;
DELETE  FROM PatientDetails
WHERE DOCTOR ='Dr. Prince';
SET SQL_SAFE_UPDATES= 1;




-- ----------------------------Task 3--------------------------------

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

SELECT * FROM Employee
WHERE HIRE_DATE = NULL;

SET SQL_SAFE_UPDATES= 0;
DELETE FROM Employee
WHERE SALARY <= 33000;
SET SQL_SAFE_UPDATES= 1;

SELECT * FROM Employee;

SET SQL_SAFE_UPDATES= 0;
DELETE FROM Employee
WHERE JOB_ID = 'IT_PROG' AND
HIRE_DATE > '2017-01-01';
SET SQL_SAFE_UPDATES= 1;

SET SQL_SAFE_UPDATES= 0;
DELETE FROM Employee
WHERE SALARY BETWEEN 20000 AND 60000
AND HIRE_DATE = NULL;
SET SQL_SAFE_UPDATES= 1;









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