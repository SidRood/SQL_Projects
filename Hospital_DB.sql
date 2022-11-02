/* Mountain View Community Hospital*/

/* Create tables */
CREATE TABLE Patient(
patient_id int PRIMARY KEY,
last_name varchar(255),
first_name varchar(255),
address_ varchar(255),
phone varchar(255),
email varchar(255));

CREATE TABLE Care_Center(
care_center_id int PRIMARY KEY,
care_center_name varchar(255));

CREATE TABLE Bed(
bed_number int PRIMARY KEY,
room_number int,
care_center_id varchar(255));

CREATE TABLE Orders(
procedures_ varchar(255),
services_ varchar(255)PRIMARY KEY,
diagnostic_tests varchar(255),
item_code int);

CREATE TABLE Physician(
name varchar(255),
physician_id int PRIMARY KEY,
years_worked int);

CREATE TABLE Diagnosis(
medical_condition varchar(255)PRIMARY KEY,
diagnosis_id int,
diagnosis_name varchar(255));

CREATE TABLE Patient_Charges(
patient_id int,
item_description varchar(255),
item_code int,
amount varchar(255) PRIMARY KEY,
date_charged varchar(255),
patient_insurance varchar(255),
paid varchar(255));

CREATE TABLE Item(
item_code int PRIMARY KEY,
description varchar(255),
unit_cost int);

CREATE TABLE Treatment(
treatment_id int PRIMARY KEY,
medical_condition varchar(255),
procedure_ varchar(255),
date_ varchar(255));


/* Create records */
INSERT INTO Patient
VALUES ('2345','Silver','John','598 Sunset Way, Ottawa, Kansas','234-543-8094','jsilver@gmail.com');
INSERT INTO Patient
VALUES ('8376','Dawson','Hector','2901 Pebble Road, Lawrence, Kansas','736-899-2365','dson$@cox.net');
INSERT INTO Patient
VALUES ('4789','Fulton','Olivia','16 Backwood Boulevard, Overland Park, Kansas','427-983-2647','livliv2@yahoo.com');
INSERT INTO Bed
VALUES ('239','47','5482');
INSERT INTO Physician
VALUES ('Dr. Sully','844','4');
INSERT INTO Physician
VALUES ('Dr. Bassen','463','7');
INSERT INTO Diagnosis
VALUES ('Broken forearm','3248','clean break of the ulna');
INSERT INTO Patient_Charges 
VALUES ('2458','surgery','847','$730','3/22/2021','Medicaid','Yes');
INSERT INTO Treatment
VALUES ('498','child birth','c-section','4/12/2021');
INSERT INTO Treatment
VALUES ('340','dislocated shoulder','Adjustment, medication, & rehabilitation','4/3/2021');
INSERT INTO Treatment
VALUES ('236','Appendicitis','Surgery','3/10/2021');
INSERT INTO Treatment
VALUES ('348','Chlmydia','Antibiotics','2/28/2021');
INSERT INTO Treatment
VALUES ('623','Diabetes','Insulin pump','3/37/2021');
INSERT INTO Treatment
VALUES ('290','Cyst','Extract liquid or surgery','4/5/2021');


/* Display all the records from the table */
SELECT * FROM Physician ORDER BY name ASC;
SELECT COUNT(first_name) FROM Patient;
SELECT * FROM Patient_charges WHERE item_code ='847';
SELECT * FROM Bed;
SELECT COUNT(physician_id) FROM Physician;
SELECT * FROM Treatment;
SELECT date_ FROM Treatment ORDER BY date_ DESC;
SELECT * FROM Patient WHERE patient_id > 4000;


DROP TABLE Bed
DROP TABLE Care_Center
DROP TABLE Diagnosis
DROP TABLE Item
DROP TABLE Orders
DROP TABLE Patient
DROP TABLE Patient_Charges
DROP TABLE Physician
DROP TABLE Treatment