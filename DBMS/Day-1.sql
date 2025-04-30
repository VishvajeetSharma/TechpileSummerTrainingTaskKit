-- -----------------------Task 1 -----------------------------

CREATE DATABASE IF NOT EXISTS Hospital;


-- ----------------------Task 2------------------------------

USE Hospital;

create table if not exists patientDetails(
SR int primary key auto_increment,
Name varchar(30) not null,
Address varchar(60),
Mobile bigint not null,
Entry_Date date not null,
Discharge_Date date,
Doctor varchar(30) not null
);

insert into patientDetails
(Name, Address, Mobile, Entry_Date, Discharge_Date, Doctor)values
("Aman", "Munsipuliya LKO", 7689543678, '2024-01-07', '2024-03-09', "Dr.Shreya"),
("Suresh", "Vikash Nagar LKO", 7687654378, '2024-03-31', '2024-06-23', "Dr.Sandeep"),
("Aryan", "Badshah Nagar LKO", 6789343678, '2024-04-07', '2024-05-01', "Dr.Amit"),
("Suman", "Hajratganj LKO", 7689598723, '2024-04-10', '2024-08-09', "Dr.Vikash"),
("Sneha", "Charbag LKO", 7689533464, '2024-05-27', '2024-08-1', "Dr.Visu");

select * from patientDetails;

-- --------------------------Task 3----------------------------

CREATE TABLE IF NOT EXISTS productdetails(
SR int PRIMARY KEY AUTO_INCREMENT,
Product_Name varchar(40) NOT NULL,
Total numeric NOT NULL,
MRP numeric NOT NULL,
Salerate numeric,
Entry_Date date
);

-- --------------------------Task 4----------------------

INSERT INTO productdetails
(Product_Name, Total, MRP, Salerate, Entry_Date)VALUES
("Hospital Beds", 3, 2000, 1500, '2024-03-02'),
("Injection", 10, 200, 2500, '2024-03-28'),
("Trolly", 5, 2200, 1000, '2024-04-15'),
("Stretcher", 2, 3000, 2700, '2024-05-02'),
("Wheel Chair", 4, 2500, 1200, '2024-05-30'),
("Oxygen Mask", 10, 300, 1800, '2024-07-12'),
("First Aid Kit", 6, 1200, 3500, '2024-07-22');

SELECT * FROM productdetails;

-- ---------------------------Task 5----------------------

ALTER TABLE productdetails
MODIFY COLUMN MRP varchar(50);

ALTER TABLE productdetails
RENAME COLUMN SALERATE TO SALEPRICE;

ALTER TABLE productdetails
RENAME TO products;

ALTER TABLE products
DROP SR, DROP PRODUCT_NAME, DROP TOTAL, DROP MRP, DROP SALEPRICE, DROP ENTRY_DATE;

ALTER TABLE products
ADD COLUMN BRAND varchar(50) not null;