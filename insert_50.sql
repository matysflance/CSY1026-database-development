--@C:\Users\user\Desktop\Project\inserts_50.txt;

/*
CARL S N HARRSISON, 17439624, DATABASES, CSY1026_8
15/MAR/2018 COMPUTING YEAR1
*/

--SUBJECTS 100-299

INSERT INTO subjects (subject_id,subject_title,subject_category)
VALUES (seq_subjects.NEXTVAL,'COMPUTING','BSC');

INSERT INTO subjects (subject_id,subject_title,subject_category)
VALUES (seq_subjects.NEXTVAL,'SOFTWARE','BSC');

INSERT INTO subjects (subject_id,subject_title,subject_category)
VALUES (seq_subjects.NEXTVAL,'GAMING','BSC');

INSERT INTO subjects (subject_id,subject_title,subject_category)
VALUES (seq_subjects.NEXTVAL,'MATHS','BSC');

INSERT INTO subjects (subject_id,subject_title,subject_category)
VALUES (seq_subjects.NEXTVAL,'PHYSICS','BSC');


--LOCATIONS 300-499

INSERT INTO locations (location_id,location_country,location_city,location_street,location_house_no,location_postcode,location_function)
VALUES (seq_locations.NEXTVAL,'UK','NORTHAMPTON','BOUGHTEN GREEN ROAD','15','NN27AL','UNIVERSITY');

INSERT INTO locations (location_id,location_country,location_city,location_street,location_house_no,location_postcode,location_function)
VALUES (seq_locations.NEXTVAL,'UK','NORTHAMPTON','GREEN ROAD','20','NN27AG','SPORT CENTRE');

INSERT INTO locations (location_id,location_country,location_city,location_street,location_house_no,location_postcode,location_function)
VALUES (seq_locations.NEXTVAL,'UK','NORTHAMPTON','RED ROAD','11','NN24RG','ACCOMIDATION');

INSERT INTO locations (location_id,location_country,location_city,location_street,location_house_no,location_postcode,location_function)
VALUES (seq_locations.NEXTVAL,'UK','LONDON','YELLOW ROAD','15','LO12NA','ACCOMIDATION');

INSERT INTO locations (location_id,location_country,location_city,location_street,location_house_no,location_postcode,location_function)
VALUES (seq_locations.NEXTVAL,'UK','LONDON','GOLD ROAD','54','NN27AGw','UNIVERSITY');

--EVENTS 1000-1999

INSERT INTO events (event_id,location_id,subject_id,event_date,event_duration,event_title,event_description,event_capacity)
VALUES (seq_events.NEXTVAL,'300','100','15-MAR-2018','00.30','IOT','INTERNET OF THINGS','50');

INSERT INTO events (event_id,location_id,subject_id,event_date,event_duration,event_title,event_description,event_capacity)
VALUES (seq_events.NEXTVAL,'301','101','17-MAR-2018','01.30','PROGRAMMING','SQL','150');

INSERT INTO events (event_id,location_id,subject_id,event_date,event_duration,event_title,event_description,event_capacity)
VALUES (seq_events.NEXTVAL,'302','101','12-MAR-2018','02.30','DESIGN','WEB','50');

INSERT INTO events (event_id,location_id,subject_id,event_date,event_duration,event_title,event_description,event_capacity)
VALUES (seq_events.NEXTVAL,'303','102','15-MAR-2018','01.00','DEVELOPMENT','JAVA','100');

INSERT INTO events (event_id,location_id,subject_id,event_date,event_duration,event_title,event_description,event_capacity)
VALUES (seq_events.NEXTVAL,'301','104','18-MAR-2018','01.30','MAINTENENCE','TAKE CARE OF YOUR PROGRAMS','50');

--PAYMENT_TYPES 500-799

INSERT INTO payment_types (payment_type_id,method)
VALUES(seq_payment_types.NEXTVAL,'DEBIT VISA');

INSERT INTO payment_types (payment_type_id,method)
VALUES(seq_payment_types.NEXTVAL,'PAYPAL');

INSERT INTO payment_types (payment_type_id,method)
VALUES(seq_payment_types.NEXTVAL,'MASTER CARD');

INSERT INTO payment_types (payment_type_id,method)
VALUES(seq_payment_types.NEXTVAL,'AMERICAN EXPRESS');

INSERT INTO payment_types (payment_type_id,method)
VALUES(seq_payment_types.NEXTVAL,'CASH');

--GROUPS 2000-3999

INSERT INTO groups(group_id,department,contact_number,group_name)
VALUES (seq_groups.NEXTVAL,'COMPUTING','07435674345','GROUP1');

INSERT INTO groups(group_id,department,contact_number,group_name)
VALUES (seq_groups.NEXTVAL,'COMPUTING','07435675678','GROUP2');

INSERT INTO groups(group_id,department,contact_number,group_name)
VALUES (seq_groups.NEXTVAL,'COMPUTING','07564674345','GROUP3');

INSERT INTO groups(group_id,department,contact_number,group_name)
VALUES (seq_groups.NEXTVAL,'COMPUTING','01582543234','GROUP4');

INSERT INTO groups(group_id,department,contact_number,group_name)
VALUES (seq_groups.NEXTVAL,'COMPUTING','08156756432','GROUP5');

--STAFF 4000-5999

INSERT INTO staff(staff_id,group_id,title,staff_firstname,staff_lastname,house_no,street,town,county,postcode,country,contact_number,email,gender,date_registered)
VALUES(seq_staff.NEXTVAL,'2000','MR','FRED','BEAN','105','GREEN STREET','LONDON','GREATER LONDON','LO12AS','UK','07856453523','EMAIL@LIVE.CO.UK','M','10-MAR-2018');

INSERT INTO staff(staff_id,group_id,title,staff_firstname,staff_lastname,house_no,street,town,county,postcode,country,contact_number,email,gender,date_registered)
VALUES(seq_staff.NEXTVAL,'2001','MRS','APRIL','MAY','105','BLUE STREET','LONDON','GREATER LONDON','LO12AA','UK','07856453123','EMAIL1@LIVE.CO.UK','F','15-MAR-2018');

INSERT INTO staff(staff_id,group_id,title,staff_firstname,staff_lastname,house_no,street,town,county,postcode,country,contact_number,email,gender,date_registered)
VALUES(seq_staff.NEXTVAL,'2001','MR','BARRY','SMITH','105','RED STREET','NORTHAMPTON','NORTHAMPTIONSHIRE','NN12AS','UK','07856453223','EMAIL2@LIVE.CO.UK','M','12-MAR-2018');

INSERT INTO staff(staff_id,group_id,title,staff_firstname,staff_lastname,house_no,street,town,county,postcode,country,contact_number,email,gender,date_registered)
VALUES(seq_staff.NEXTVAL,'2002','MRS','ALICE','WATT','105','YELLOW STREET','LONDON','GREATER LONDON','LO14GF','UK','07856453323','EMAIL3@LIVE.CO.UK','F','20-MAR-2018');

INSERT INTO staff(staff_id,group_id,title,staff_firstname,staff_lastname,house_no,street,town,county,postcode,country,contact_number,email,gender,date_registered)
VALUES(seq_staff.NEXTVAL,'2004','MR','JOHN','SNOW','105','ORANGE STREET','NORTHAMPTON','NORTHAMPTIONSHIRE','NN12AS','UK','07856453423','EMAIL4@LIVE.CO.UK','M','15-MAR-2018');

--ATTENDEES 10000000-19999999

INSERT INTO attendees(attendee_id,attendee_firstname,attendee_lastname)
VALUES(seq_attendees.NEXTVAL,'JOHN','WICK');

INSERT INTO attendees(attendee_id,attendee_firstname,attendee_lastname)
VALUES(seq_attendees.NEXTVAL,'DOM','NICKSON');

INSERT INTO attendees(attendee_id,attendee_firstname,attendee_lastname)
VALUES(seq_attendees.NEXTVAL,'SAMANTHA','WICK');

INSERT INTO attendees(attendee_id,attendee_firstname,attendee_lastname)
VALUES(seq_attendees.NEXTVAL,'LUKE','PERRY');

INSERT INTO attendees(attendee_id,attendee_firstname,attendee_lastname)
VALUES(seq_attendees.NEXTVAL,'SARAH','SMITH');

--ATTENDEE_PAYMENTS 1000000000-1999999999

INSERT INTO attendee_payments(attendee_payment_id,attendee_id,payment_type_id,payment_date)
VALUES (seq_attendee_payments.NEXTVAL,10000000,500,'15-MAR-2018');

INSERT INTO attendee_payments(attendee_payment_id,attendee_id,payment_type_id,payment_date)
VALUES (seq_attendee_payments.NEXTVAL,10000001,502,'13-MAR-2018');

INSERT INTO attendee_payments(attendee_payment_id,attendee_id,payment_type_id,payment_date)
VALUES (seq_attendee_payments.NEXTVAL,10000002,501,'11-MAR-2018');

INSERT INTO attendee_payments(attendee_payment_id,attendee_id,payment_type_id,payment_date)
VALUES (seq_attendee_payments.NEXTVAL,10000003,501,'20-MAR-2018');

INSERT INTO attendee_payments(attendee_payment_id,attendee_id,payment_type_id,payment_date)
VALUES (seq_attendee_payments.NEXTVAL,10000004,503,'7-JUN-2018');

--ENROLMENTS 2000000000-2999999999

INSERT INTO enrolments(enrolment_id,staff_id,attendee_id,enrolment_date)
VALUES (seq_enrolments.NEXTVAL,4001,10000001,'12-MAR-2018');

INSERT INTO enrolments(enrolment_id,staff_id,attendee_id,enrolment_date)
VALUES (seq_enrolments.NEXTVAL,4001,10000002,'11-MAR-2018');

INSERT INTO enrolments(enrolment_id,staff_id,attendee_id,enrolment_date)
VALUES (seq_enrolments.NEXTVAL,4003,10000002,'10-MAR-2018');

INSERT INTO enrolments(enrolment_id,staff_id,attendee_id,enrolment_date)
VALUES (seq_enrolments.NEXTVAL,4004,10000003,'15-MAR-2018');

INSERT INTO enrolments(enrolment_id,staff_id,attendee_id,enrolment_date)
VALUES (seq_enrolments.NEXTVAL,4000,10000000,'16-MAR-2018');

--TRANSACTIONS 20000000-29999999

INSERT INTO transactions(transaction_id,attendee_payment_id,enrolment_id)
VALUES (seq_transactions.NEXTVAL,1000000001,2000000000);

INSERT INTO transactions(transaction_id,attendee_payment_id,enrolment_id)
VALUES (seq_transactions.NEXTVAL,1000000002,2000000001);

INSERT INTO transactions(transaction_id,attendee_payment_id,enrolment_id)
VALUES (seq_transactions.NEXTVAL,1000000003,2000000002);

INSERT INTO transactions(transaction_id,attendee_payment_id,enrolment_id)
VALUES (seq_transactions.NEXTVAL,1000000004,2000000003);

INSERT INTO transactions(transaction_id,attendee_payment_id,enrolment_id)
VALUES (seq_transactions.NEXTVAL,1000000000,2000000004);

--ACTIVITIES 6000-7999

INSERT INTO activities(activity_id,enrolment_id,event_id,location,activity_date)
VALUES (seq_activities.NEXTVAL,2000000001,1000,'LONDON','15-MAR-2018');

INSERT INTO activities(activity_id,enrolment_id,event_id,location,activity_date)
VALUES (seq_activities.NEXTVAL,2000000001,1001,'NORTHAMPTON','15-MAR-2018');

INSERT INTO activities(activity_id,enrolment_id,event_id,location,activity_date)
VALUES (seq_activities.NEXTVAL,2000000002,1001,'LONDON','15-MAR-2018');

INSERT INTO activities(activity_id,enrolment_id,event_id,location,activity_date)
VALUES (seq_activities.NEXTVAL,2000000004,1003,'NORTHAMPTON','15-MAR-2018');

INSERT INTO activities(activity_id,enrolment_id,event_id,location,activity_date)
VALUES (seq_activities.NEXTVAL,2000000000,1004,'LONDON','15-MAR-2018');

--REVIEWS 30000000-49999999

INSERT INTO reviews(review_id,activity_id,review_content,review_date,rating)
VALUES (seq_reviews.NEXTVAL,6000,'GREAT PRODUCT','15-MAR-2018','90');

INSERT INTO reviews(review_id,activity_id,review_content,review_date,rating)
VALUES (seq_reviews.NEXTVAL,6001,'GREAT PRODUCT','15-MAR-2018','70');

INSERT INTO reviews(review_id,activity_id,review_content,review_date,rating)
VALUES (seq_reviews.NEXTVAL,6002,'BAD PRODUCT','15-MAR-2018','40');

INSERT INTO reviews(review_id,activity_id,review_content,review_date,rating)
VALUES (seq_reviews.NEXTVAL,6002,'GREAT PRODUCT','15-MAR-2018','80');

INSERT INTO reviews(review_id,activity_id,review_content,review_date,rating)
VALUES (seq_reviews.NEXTVAL,6004,'BAD PRODUCT','15-MAR-2018','30');





--SELECT * FROM table_name

--EXAMPLES OF OTHER INSERTS
/*

UPDATE reviews
SET rating = '100'
WHERE activity_id = 6002 ;

*/
