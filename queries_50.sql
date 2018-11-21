--@C:\Users\user\Desktop\Project\queries_50.txt

/*
ADAM BRUZAC, 17450054, DATABASES, CSY1026_4
18/MAR/2018 SOFTWARE ENGINEERING YEAR1
*/
-- @D:\Uni\Databases\term2\as2\database.txt


--QUERIES--


SELECT * FROM events;


SELECT location_country, location_city, location_postcode
FROM locations
ORDER BY location_country, location_city DESC;


SELECT * FROM staff 
WHERE NOT street = 'ORANGE STREET' AND town = 'NORTHAMPTON';


SELECT * FROM attendee_payments
WHERE payment_date BETWEEN '11-MAR-2018' AND '20-MAR-2018';



SELECT staff_firstname, staff_lastname, town, county
FROM staff
ORDER BY town, county;

SELECT activity_id, review_content, rating
FROM reviews
WHERE review_content LIKE 'BAD%';

SELECT attendee_id, attendee_firstname, attendee_lastname
FROM attendees
WHERE attendee_firstname = 'LUKE' AND attendee_lastname = 'PERRY';

SELECT location_city, location_postcode, location_street, location_house_no
FROM locations
WHERE NOT location_city = 'LONDON';

SELECT attendee_lastname, payment_date
FROM attendees JOIN attendee_payments
ON attendees.attendee_id = attendee_payments.attendee_id;