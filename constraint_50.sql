--@C:\Users\user\Desktop\Project\constraint_50.txt;
/* 
CSY1026 Databases, Sebastian Matysiak, 15/03/2018

Below are all commands concerned with constraints of our database
 
*/
 
 -- RunCommand EG @f:\databases\constraint_50.txt


-- PRIMARY KEY CONSTRAINTS

-- Primary key in subjects table
ALTER TABLE subjects
ADD CONSTRAINT pk_subjects
PRIMARY KEY(subject_id);

-- Primary key in locations table
ALTER TABLE locations
ADD CONSTRAINT pk_locations
PRIMARY KEY(location_id);

-- Primary key in events table
ALTER TABLE events
ADD CONSTRAINT pk_events
PRIMARY KEY(event_id);

-- Primary key in payment_types table
ALTER TABLE payment_types
ADD CONSTRAINT pk_payment_types
PRIMARY KEY(payment_type_id);

-- Primary key in groups table
ALTER TABLE groups
ADD CONSTRAINT pk_groups
PRIMARY KEY(group_id);

-- Primary key in staff table
ALTER TABLE staff
ADD CONSTRAINT pk_staff
PRIMARY KEY(staff_id);

-- Primary key in attendees table
ALTER TABLE attendees
ADD CONSTRAINT pk_attendees
PRIMARY KEY(attendee_id);

-- Primary key in attendee_payments table
ALTER TABLE attendee_payments
ADD CONSTRAINT pk_attendee_payments
PRIMARY KEY(attendee_payment_id);

-- Primary key in enrolments table
ALTER TABLE enrolments
ADD CONSTRAINT pk_enrolments
PRIMARY KEY(enrolment_id);

-- Primary key in transactions table
ALTER TABLE transactions
ADD CONSTRAINT pk_transactions
PRIMARY KEY(transaction_id);

-- Primary key in activities table
ALTER TABLE activities
ADD CONSTRAINT pk_activities
PRIMARY KEY(activity_id);

-- Primary key in reviews table
ALTER TABLE reviews
ADD CONSTRAINT pk_reviews
PRIMARY KEY(review_id);


-- FOREIGN KEY CONSTRAINTS


-- Foreign key in events table

ALTER TABLE events 
ADD CONSTRAINT fk_e_locations
FOREIGN KEY (location_id)
REFERENCES locations (location_id);

-- Foreign key in events table
ALTER TABLE events 
ADD CONSTRAINT fk_e_subjects
FOREIGN KEY (subject_id)
REFERENCES subjects (subject_id);

-- Foreign key in staff table
ALTER TABLE staff 
ADD CONSTRAINT fk_s_groups
FOREIGN KEY (group_id)
REFERENCES groups (group_id);

-- Foreign key in attendee_payments table
ALTER TABLE attendee_payments 
ADD CONSTRAINT fk_ap_attendees
FOREIGN KEY (attendee_id)
REFERENCES attendees (attendee_id);

-- Foreign key in attendee_payments table
ALTER TABLE attendee_payments 
ADD CONSTRAINT fk_ap_payment_types
FOREIGN KEY (payment_type_id)
REFERENCES payment_types (payment_type_id);

-- Foreign key in enrolments table
ALTER TABLE enrolments 
ADD CONSTRAINT fk_e_staff
FOREIGN KEY (staff_id)
REFERENCES staff (staff_id);

-- Foreign key in enrolments table
ALTER TABLE enrolments 
ADD CONSTRAINT fk_e_attendees
FOREIGN KEY (attendee_id)
REFERENCES attendees (attendee_id);

-- Foreign key in transactions table
ALTER TABLE transactions 
ADD CONSTRAINT fk_t_attendee_payments
FOREIGN KEY (attendee_payment_id)
REFERENCES attendee_payments (attendee_payment_id);

-- Foreign key in transactions table
ALTER TABLE transactions 
ADD CONSTRAINT fk_t_enrolments
FOREIGN KEY (enrolment_id)
REFERENCES enrolments (enrolment_id);

-- Foreign key in activities table
ALTER TABLE activities 
ADD CONSTRAINT fk_a_enrolments
FOREIGN KEY (enrolment_id)
REFERENCES enrolments (enrolment_id);

-- Foreign key in activities table
ALTER TABLE activities 
ADD CONSTRAINT fk_a_events
FOREIGN KEY (event_id)
REFERENCES events (event_id);

-- Foreign key in reviews table
ALTER TABLE reviews 
ADD CONSTRAINT fk_r_activities
FOREIGN KEY (activity_id)
REFERENCES activities (activity_id);

-- OTHER CONSTRAINTS IN SUBJECTS TABLE

-- OTHER CONSTRAINTS IN LOCATIONS TABLE
ALTER TABLE locations 
ADD CONSTRAINT ck_upper_location_country
CHECK (location_country = UPPER(location_country));

ALTER TABLE locations
MODIFY (location_country DEFAULT 'UK');

-- OTHER CONSTRAINTS IN EVENTS TABLE
ALTER TABLE events 
ADD CONSTRAINT ck_upper_event_title
CHECK (event_title = UPPER(event_title));

ALTER TABLE events
MODIFY (location_id NOT NULL);

ALTER TABLE events
MODIFY (subject_id NOT NULL);

ALTER TABLE events
MODIFY (event_date DEFAULT SYSDATE);

-- OTHER CONSTRAINTS IN PAYMENT_TYPES TABLE
ALTER TABLE payment_types
MODIFY (method DEFAULT 'VISA');

-- OTHER CONSTRAINTS IN GROUPS TABLE

-- OTHER CONSTRAINTS IN STAFF TABLE
ALTER TABLE staff
ADD CONSTRAINT u_staff_email
UNIQUE(email);

ALTER TABLE staff 
ADD CONSTRAINT ck_upper_staff_firstname
CHECK (staff_firstname = UPPER(staff_firstname));

ALTER TABLE staff 
ADD CONSTRAINT ck_upper_staff_lastname
CHECK (staff_lastname = UPPER(staff_lastname));

ALTER TABLE staff 
ADD CONSTRAINT ck_in_title
CHECK (title IN ('MRS', 'MISS', 'MR', 'DR'));

ALTER TABLE staff
MODIFY (title DEFAULT 'MR');

ALTER TABLE staff
MODIFY (country DEFAULT 'UK');

ALTER TABLE staff
MODIFY (gender DEFAULT 'F');

ALTER TABLE staff
MODIFY (date_registered DEFAULT SYSDATE);

-- OTHER CONSTRAINTS IN ATTENDEES TABLE
ALTER TABLE attendees
ADD CONSTRAINT ck_upper_attendee_firstname
CHECK (attendee_firstname = UPPER(attendee_firstname));

ALTER TABLE attendees
ADD CONSTRAINT ck_upper_attendee_lastname
CHECK (attendee_lastname = UPPER(attendee_lastname));

-- OTHER CONSTRAINTS IN ATTENDEE_PAYMENTS TABLE
ALTER TABLE attendee_payments
MODIFY (attendee_id NOT NULL);

ALTER TABLE attendee_payments
MODIFY (payment_type_id NOT NULL);

-- OTHER CONSTRAINTS IN ENROLMENTS TABLE
ALTER TABLE enrolments
MODIFY (staff_id NOT NULL);

ALTER TABLE enrolments
MODIFY (attendee_id NOT NULL);

-- OTHER CONSTRAINTS IN TRANSACTIONS TABLE
ALTER TABLE transactions
MODIFY (attendee_payment_id NOT NULL);

ALTER TABLE transactions
MODIFY (enrolment_id NOT NULL);

-- OTHER CONSTRAINTS IN ACTIVITIES TABLE
ALTER TABLE activities 
ADD CONSTRAINT ck_upper_activity_location
CHECK (location = UPPER(location));

ALTER TABLE activities
MODIFY (enrolment_id NOT NULL);

ALTER TABLE activities
MODIFY (event_id NOT NULL);

-- OTHER CONSTRAINTS IN REVIEWS TABLE
ALTER TABLE reviews
MODIFY (activity_id NOT NULL);