--@C:\Users\user\Desktop\Project\create_50.txt;
/* 
DATABASES 1, Harry Worts, 16-MAR-2018
Edited and approved by Carl Harrison

*/
 
 -- RunCommand EG @f:\databases\createtest.txt
 
 -- NOTE ORDER THE TABLES ARE CREATED, THE NOT NULLS AND DEFAULT VALUES

-- CREATE TABLE COMMANDS

CREATE TABLE subjects(
subject_id 			NUMBER(3),
subject_title 		VARCHAR2(20),
subject_category 	VARCHAR2(15));

CREATE TABLE locations(
location_id 		NUMBER(3),
location_country 	VARCHAR2(15),
location_city 		VARCHAR2(15),
location_street 	VARCHAR2(40),
location_house_no 	VARCHAR2(4),
location_postcode 	VARCHAR2(8),
location_function 	VARCHAR2(20));

CREATE TABLE events(
event_id 			NUMBER(4),
location_id 		NUMBER(3),
subject_id 			NUMBER(3),
event_date 			DATE,
event_duration 		NUMBER(4,2),
event_title			VARCHAR2(15),
event_description 	VARCHAR2(40),
event_capacity 		VARCHAR2(10));

CREATE TABLE payment_types(
payment_type_id 	NUMBER(3),
method 				VARCHAR2(20));

CREATE TABLE groups(
group_id 			NUMBER(4),
department 			VARCHAR2(20),
contact_number		CHAR(11),
group_name 			VARCHAR2(30));

CREATE TABLE staff(
staff_id 			NUMBER(4),
group_id 			NUMBER(4),
title 				VARCHAR2(4),
staff_firstname 	VARCHAR2(20),
staff_lastname 		VARCHAR2(40),
house_no 			VARCHAR2(4),
street 				VARCHAR2(20),
town				VARCHAR2(20),
county				VARCHAR2(20),
postcode			CHAR(6),
country				VARCHAR2(20),
contact_number		CHAR(11),
email				VARCHAR2(30),
gender				CHAR(1),
date_registered		DATE);

CREATE TABLE attendees(
attendee_id 		NUMBER(8),
attendee_firstname	VARCHAR2(20),
attendee_lastname	VARCHAR2(20));

CREATE TABLE attendee_payments(
attendee_payment_id	NUMBER(10),
attendee_id			NUMBER(8),
payment_type_id		NUMBER(3),
payment_date		DATE);

CREATE TABLE enrolments(
enrolment_id		NUMBER(10),
staff_id			NUMBER(8),
attendee_id			NUMBER(8),
enrolment_date		DATE);

CREATE TABLE transactions(
transaction_id 		NUMBER(8),
attendee_payment_id	NUMBER(10),
enrolment_id		NUMBER(10));

CREATE TABLE activities(
activity_id			NUMBER(4),
enrolment_id		NUMBER(10),
event_id			NUMBER(4),
location			VARCHAR2(20),
activity_date		DATE);

CREATE TABLE reviews(
review_id			NUMBER(8),
activity_id			NUMBER(4),
review_content		VARCHAR2(200),
review_date			DATE,
rating				NUMBER(3));


-- Sequences

CREATE SEQUENCE seq_subjects
INCREMENT BY 1
START WITH 100
MAXVALUE 299;

CREATE SEQUENCE seq_locations
INCREMENT BY 1
START WITH 300
MAXVALUE 499;

CREATE SEQUENCE seq_events
INCREMENT BY 1
START WITH 1000
MAXVALUE 1999;

CREATE SEQUENCE seq_payment_types
INCREMENT BY 1
START WITH 500
MAXVALUE 799;

CREATE SEQUENCE seq_groups
INCREMENT BY 1
START WITH 2000
MAXVALUE 3999;

CREATE SEQUENCE seq_staff
INCREMENT BY 1
START WITH 4000
MAXVALUE 5999;

CREATE SEQUENCE seq_attendees
INCREMENT BY 1 
START WITH 10000000
MAXVALUE 19999999;

CREATE SEQUENCE seq_attendee_payments
INCREMENT BY 1 
START WITH 1000000000
MAXVALUE 1999999999;

CREATE SEQUENCE seq_enrolments
INCREMENT BY 1 
START WITH 2000000000
MAXVALUE 2999999999;

CREATE SEQUENCE seq_transactions
INCREMENT BY 1 
START WITH 20000000
MAXVALUE 299999999;

CREATE SEQUENCE seq_activities
INCREMENT BY 1 
START WITH 6000
MAXVALUE 7999;

CREATE SEQUENCE seq_reviews
INCREMENT BY 1 
START WITH 30000000
MAXVALUE 399999999;










	











