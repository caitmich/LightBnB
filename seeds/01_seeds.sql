INSERT INTO users (name, email, password)
VALUES ('Harry Henderson', 'harry@hellohenderson.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'), 
('Etta West', 'charlielevy@yahoo.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'), 
('North South', 'east@west.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code)
VALUES 
(1, 'Quaint Cottage', 'description', 'https://www.123rf.com/photo_62399205_a-charming-playhouse-cottage-sits-at-the-edge-of-a-shaded-perennial-garden-.html?vti=nd3wd88vxhbbp4w9v9-1-3', 'https://www.123rf.com/photo_156082851_countryside-in-winter-wooden-houses-and-outbuildings-covered-with-snow-in-cloudy-winter-day-rural-la.html?vti=nd3wd88vxhbbp4w9v9-1-4', 200, 6, 1, 1, 'Canada', '12 Dirt Road', 'Kawartha', 'Ontario', 'y63 2xy'), 
(3, 'City Living', 'description', 'https://www.123rf.com/photo_141631341_johor-bahru-malaysia-at-night-malaysian-city-with-traffic-on-highway-and-modern-business-buildings-a.html?vti=o7bzach6owqll01vo6-1-5', 'https://www.123rf.com/photo_141631341_johor-bahru-malaysia-at-night-malaysian-city-with-traffic-on-highway-and-modern-business-buildings-a.html?vti=o7bzach6owqll01vo6-1-5', 450, 0, 2, 2, 'Canada', '6 City Park', 'Vancouver', 'BC', 'x53 2s0'), 
(1, 'Lake Escape', 'description', 'https://www.123rf.com/photo_132039093_riverside-residential-neighborhood-in-suburbs-dallas-texas-usa-row-of-single-family-detached-homes-w.html?vti=m7uraxj1g7w84dse11-1-13', 'https://www.123rf.com/photo_132039093_riverside-residential-neighborhood-in-suburbs-dallas-texas-usa-row-of-single-family-detached-homes-w.html?vti=m7uraxj1g7w84dse11-1-13', 850, 2, 6, 5, 'Canada', '3000 Lakeside Dr', 'Lakeside', 'Ontario', '0m0 m0m');

INSERT INTO reservations (guest_id, property_id, start_date, end_date)
VALUES (1, 1, '2018-09-11', '2018-09-26'),
(2, 2, '2019-01-04', '2019-02-01'),
(3, 3, '2021-10-01', '2021-10-14');

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (1, 1, 3, 3, 'message'), (1, 2, 1, 5, 'message'), (1, 3, 2, 4, 'message');