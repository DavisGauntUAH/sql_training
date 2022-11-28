--cars
INSERT INTO cars (make, model, color) VALUES ('Ford', 'F-150', 'white');
INSERT INTO cars (year, make, model, color) VALUES (2006, 'Ford', 'F-150', 'red');
INSERT INTO cars (year, make, model, color) VALUES (2011, 'Ford', 'edge', 'orange');
INSERT INTO cars (make, model, color) VALUES ('Toyota', 'tacoma', 'gray');
INSERT INTO cars (year, make, model, color) VALUES (2018, 'KIA', 'rio', 'blue');
--users
INSERT INTO users (first_name, middle_initial, last_name, married_flag, preferred_name, eye_color, hair_color, age)
    VALUES ('Bryson' , 'D', 'Gaunt', TRUE, 'Davis', 'blue', 'brown', 22);
INSERT INTO users (first_name, last_name, married_flag, eye_color, hair_color, age) VALUES ('Megan', 'Gaunt', TRUE, 'green', 'red', 29);
INSERT INTO users (first_name, last_name, eye_color, hair_color, age) VALUES ('Bob', 'Sagget', 'green', 'black', 55);
INSERT INTO users (first_name, last_name, hair_color, age) VALUES ('Adam', 'Savage', 'purple', 42);
INSERT INTO users (first_name, last_name, hair_color, age) VALUES ('Keanu', 'Reeves', 'black', 40);
INSERT INTO users (first_name, last_name, hair_color, age) VALUES ('Jon', 'Jackson', 'grey', 90);
--users-cars
INSERT INTO users_cars (user_id, car_id, vin) 
    VALUES ((SELECT id FROM users WHERE first_name='Bryson'),(SELECT id FROM cars WHERE color='red'),'JH4DA9450PS000246');
INSERT INTO users_cars (user_id, car_id, vin) 
    VALUES ((SELECT id FROM users WHERE first_name='Adam'),(SELECT id FROM cars WHERE model='edge'),'3G4AG54N9NS614902');
INSERT INTO users_cars (user_id, car_id, vin) 
    VALUES ((SELECT id FROM users WHERE first_name='Bryson'),(SELECT id FROM cars WHERE model='tacoma'),'YV1672MK9D2304784');
INSERT INTO users_cars (user_id, car_id, vin) 
    VALUES ((SELECT id FROM users WHERE first_name='Bryson'),(SELECT id FROM cars WHERE model='rio'),'1FAFP55U91A180689');
INSERT INTO users_cars (user_id, car_id, vin) 
    VALUES ((SELECT id FROM users WHERE first_name='Megan'),(SELECT id FROM cars WHERE model='rio'),'1G1ND52J8X6272941');
INSERT INTO users_cars (user_id, car_id, vin) 
    VALUES ((SELECT id FROM users WHERE first_name='Keanu'),(SELECT id FROM cars WHERE color='white'),'4S3BD4353T7209207');
INSERT INTO users_cars (user_id, car_id, vin) 
    VALUES ((SELECT id FROM users WHERE first_name='Keanu'),(SELECT id FROM cars WHERE model='tacoma'),'WP0AA29966S716557');
INSERT INTO users_cars (user_id, car_id, vin) 
    VALUES ((SELECT id FROM users WHERE first_name='Megan'),(SELECT id FROM cars WHERE model='edge'),'WDBHM36E3VF540750');
INSERT INTO users_cars (user_id, car_id, vin) 
    VALUES ((SELECT id FROM users WHERE first_name='Keanu'),(SELECT id FROM cars WHERE color='red'),'J8DE5B16477903094');
INSERT INTO users_cars (user_id, car_id, vin) 
    VALUES ((SELECT id FROM users WHERE first_name='Bob'),(SELECT id FROM cars WHERE color='white'),'5N1AL0MM4DC301508');