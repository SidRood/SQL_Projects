CREATE TABLE Student
 (id varchar(255),
 surname varchar(255),
 forename varchar(255),
 gender varchar(255),
 title varchar(255),
 DoB varchar(255),
 dept varchar(255),
 course varchar(255)
 );

CREATE TABLE Staff
 (id varchar(255),
 surname varchar(255),
 forename varchar(255),
 gender varchar(255),
 title varchar(255),
 DoB varchar(255),
 salary varchar(255),
 dept varchar(255)
 );
 
CREATE TABLE Department
 (dept_num varchar(255),
 dept_name varchar(255)
 );
 
 CREATE TABLE Course
 (course_num varchar(255),
 course_name varchar(255),
 dept_num_course varchar(255)
 );
 
 CREATE TABLE Unit
 (unit_num varchar(255),
 unit_name varchar(255),
 course_num_unit varchar(255)
 );

ALTER TABLE Student 
ADD telephone_number varchar(255);

ALTER TABLE Student 
ADD mobile_number varchar(255);

ALTER TABLE Staff 
ADD e_mail_address varchar(255);

ALTER TABLE Department 
ADD location varchar(255);

INSERT INTO Student(surname, forename, DoB, dept, course, id, telephone_number, mobile_number)
VALUES('Richard','Grant','19 September 1995','DEP22','BS0101','SN002349','913-515-7889','913-545-7898');

INSERT INTO Student(surname, forename, dept, course, id)
VALUES('Jennifer','Huber','DEP22','BS0101','SN003211');

INSERT INTO Student
VALUES ('SN001388', 'Ramirez', 'Marco', 'Male', 'Mr.', '20 January 1994', 'DEP21', 'IS8100', '613-415-2829', '616-535-6867');

SELECT * FROM Student;

SELECT forename FROM Student;

SELECT * FROM Student WHERE forename LIKE 'M%';

SELECT surname FROM Student ORDER BY surname DESC;

SELECT forename FROM Student ORDER BY forename ASC;

SELECT COUNT(*) FROM Student;
