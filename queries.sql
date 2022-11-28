--Update
UPDATE users_cars
    SET car_id = (SELECT id FROM cars WHERE model = 'edge')
    WHERE vin = '1FAFP55U91A180689';
UPDATE users_cars
    SET user_id = (SELECT id FROM users WHERE first_name = 'Keanu')
    WHERE vin = '1FAFP55U91A180689';
--Add attribute
ALTER TABLE users
    ADD COLUMN favorite_color VARCHAR DEFAULT 'blue';
--Get
SELECT * FROM users WHERE id NOT IN(SELECT user_id FROM users_cars);
SELECT * FROM users WHERE age > 35;
SELECT * FROM users WHERE age < 35;
SELECT * FROM users WHERE hair_color != 'purple';
SELECT id from cars 
    WHERE color IN ('white', 'blue', 'orange')
    ORDER BY year DESC;
SELECT DISTINCT users.first_name FROM users 
    JOIN (users_cars
        JOIN cars ON cars.id = users_cars.car_id)
    ON users_cars.user_id = users.id
    WHERE cars.color != 'orange'; --make response better
--On conflict
INSERT INTO users (id, first_name, last_name, age) 
    VALUES ((SELECT id FROM users WHERE first_name='Bryson'), 'Davis', 'Gaunt', '23')
    ON CONFLICT (id) DO UPDATE SET first_name = EXCLUDED.first_name, last_name = EXCLUDED.last_name, age = EXCLUDED.age, updated_at=NOW();
--delete
DELETE FROM users WHERE first_name='Bob';
DELETE FROM cars WHERE make='Ford'AND model='F-150';
DELETE FROM users_cars;
DELETE FROM users;
DELETE FROM cars;