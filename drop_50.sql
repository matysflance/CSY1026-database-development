--@C:\Users\user\Desktop\Project\drop_50.txt;

/*
ADAM BRUZAC, 17450054, DATABASES, CSY1026_4
22/JAN/2018 SOFTWARE ENGINEERING YEAR1
Edited and approved by Carl Harrison
*/
-- @D:\Uni\Databases\term2\as2\database.txt



/* FOREIGN KEYS  DROP */

--Reviews table
ALTER TABLE reviews
DROP CONSTRAINT fk_r_activities;

--activities table
ALTER TABLE activities
DROP CONSTRAINT fk_a_events;

ALTER TABLE activities
DROP CONSTRAINT fk_a_enrolments;

--Transactions table
ALTER TABLE transactions
DROP CONSTRAINT fk_t_enrolments;

ALTER TABLE transactions
DROP CONSTRAINT fk_t_attendee_payments;

--Enrollments table
ALTER TABLE enrolments
DROP CONSTRAINT fk_e_attendees;

ALTER TABLE enrolments
DROP CONSTRAINT fk_e_staff;

--Attendee payments table
ALTER TABLE attendee_payments
DROP CONSTRAINT fk_ap_payment_types;

ALTER TABLE attendee_payments
DROP CONSTRAINT fk_ap_attendees;

--Staff table
ALTER TABLE staff
DROP CONSTRAINT u_staff_email;

ALTER TABLE staff
DROP CONSTRAINT fk_s_groups;

-- Events table
ALTER TABLE events
DROP CONSTRAINT fk_e_subjects;

ALTER TABLE events
DROP CONSTRAINT fk_e_locations;


/* PRIMARY KEYS  DROP */
--Reviews table
ALTER TABLE reviews
DROP CONSTRAINT pk_reviews;

--Activities table
ALTER TABLE activities
DROP CONSTRAINT pk_activities;

--Transactions table
ALTER TABLE transactions
DROP CONSTRAINT pk_transactions;

--Enrollments table
ALTER TABLE enrolments
DROP CONSTRAINT pk_enrolments;

--Attendee payments table
ALTER TABLE attendee_payments
DROP CONSTRAINT pk_attendee_payments;

--Attendees table
ALTER TABLE attendees
DROP CONSTRAINT pk_attendees;

--Staff table
ALTER TABLE staff
DROP CONSTRAINT pk_staff;

--Groups table
ALTER TABLE groups
DROP CONSTRAINT pk_groups;

--Payment types table
ALTER TABLE payment_types
DROP CONSTRAINT pk_payment_types;

--Events table
ALTER TABLE events
DROP CONSTRAINT pk_events;

--Locations table
ALTER TABLE locations
DROP CONSTRAINT pk_locations;

--Subjects table
ALTER TABLE subjects
DROP CONSTRAINT pk_subjects;



/* TABLE DROP */


DROP TABLE reviews;


DROP TABLE activities;


DROP TABLE transactions;


DROP TABLE enrolments;


DROP TABLE attendee_payments;


DROP TABLE attendees;


DROP TABLE staff;


DROP TABLE groups;


DROP TABLE payment_types;


DROP TABLE events;


DROP TABLE locations;


DROP TABLE subjects;



--DROP SEQUENCES - CARL HARRISON - 17439624

DROP SEQUENCE seq_reviews;
DROP SEQUENCE seq_activities;
DROP SEQUENCE seq_transactions;
DROP SEQUENCE seq_enrolments;
DROP SEQUENCE seq_attendee_payments;
DROP SEQUENCE seq_attendees;
DROP SEQUENCE seq_staff;
DROP SEQUENCE seq_groups;
DROP SEQUENCE seq_payment_types;
DROP SEQUENCE seq_events;
DROP SEQUENCE seq_locations;
DROP SEQUENCE seq_subjects;



PURGE RECYCLEBIN;


-- show all user constraints
-- SELECT constraint_name FROM user_constraints;