/*Grocery Store DB*/

/* Create tables */
CREATE TABLE Employees(
employee_id varchar(255) PRIMARY KEY,
first_name varchar(255),
last_name varchar(255),
phone_number varchar(255),
department_description varchar(255),
hours_worked varchar(255));

CREATE TABLE Customers(
customer_id varchar(255) PRIMARY KEY,
first_name varchar(255),
last_name varchar(255),
street varchar(255),
city varchar(255),
state_ varchar(255),
zip varchar(255),
phone_number varchar(255),
email varchar(255),
rewards_member varchar(255));

CREATE TABLE Purchases(
item_code varchar(255) PRIMARY KEY,
description_ varchar(255),
price int,
customer_id varchar(255));

CREATE TABLE Inventory(
item_code varchar(255),
description_ char(255),
department_id varchar(255),
amount varchar(255)PRIMARY KEY);

CREATE TABLE Departments(
department_id varchar(255) PRIMARY KEY,
department_description varchar(255),
amount_purchased varchar(255),
employee_id varchar(255),
total_revenue varchar(255));


/* Create records */
/* Creating Employee records*/
INSERT INTO Employees
VALUES ('113','Trevor','Rod','987-234-5532','Electronics','24');
INSERT INTO Employees
VALUES ('255','Julia','Ellison','303-456-5890','Apparel','14');
INSERT INTO Employees 
VALUES ('121','Marco','Andres','982-663-1127','Produce','30');
INSERT INTO Employees
VALUES('198','Keke','Palmer','641-293-4433','Health/Hygiene','27');
INSERT INTO Employees
VALUES ('230','Lawson','Smith','448-902-6004','Produce','19');
INSERT INTO Employees
VALUES ('164','Jake','Lysol','557-356-2297','Apparel','33');
INSERT INTO Employees
VALUES('201','Becky','Johnson','177-902-4674','Produce','25');
INSERT INTO Employees
VALUES ('228','Dwayne','Sherpa','267-346-3846','Produce','21');
INSERT INTO Employees
VALUES ('172','Holly','Rock','282-800-2123','Electronics','23');
INSERT INTO Employees
VALUES ('157','Jack','Daniels','678-234-3893','Health/Hygiene','30');


/*Creating Purchases records*/
INSERT INTO Purchases
VALUES ('658965','SD Card 8GB','11','2376');
INSERT INTO Purchases
VALUES ('894367','Deodorant','3','7741');
INSERT INTO Purchases
VALUES ('145658','Frozen Broccoli','4','3840');


/*Displaying records*/
SELECT * FROM Employees ORDER BY employee_id ASC;
SELECT * FROM Purchases ORDER BY item_code DESC;

SELECT * FROM Employees WHERE department_description LIKE 'E%';
SELECT description_, price FROM Purchases WHERE price < 3;
SELECT COUNT(last_name) FROM Employees;
SELECT * FROM Employees WHERE hours_worked ='33';

INSERT INTO Customers
VALUES ('8745','Josiah','Washington','202 Sunset 
way','Ottawa','Kansas','66067','234-659-4590','josi66
@gmail.com','Yes');
INSERT INTO Departments
VALUES ('849','Produce','78','3467','$467');


DROP TABLE Customers
DROP TABLE Purchases
DROP TABLE Inventory
DROP TABLE Departments
DROP TABLE Employees





