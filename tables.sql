CREATE TABLE NOT EXISTS users(
    id UUID NOT NULL,
    first_name VARCHAR NOT NULL,
    middle_initial CHAR,
    last_name VARCHAR NOT NULL,
    married_flag BOOLEAN DEFAULT FALSE,
    characteristics JSON DEFAULT NULL,
    preferred_name VARCHAR,
    hair_color VARCHAR,
    eyecolor VARCHAR,
    age SMALLINT,
    updated_at TIMESTAMP,
    PRIMARY KEY (id)
);


CREATE TABLE NOT EXISTS cars(
    id UUID NOT NULL,
    year SMALLINT NOT NULL DEFAULT EXTRACT(YEAR FROM NOW()), --add get only year
    make VARCHAR,
    model VARCHAR NOT NULL,
    color VARCHAR,
    PRIMARY KEY (id),
    CONSTRAINT color CHECK(type IN('white', 'black', 'gray', 'blue', 'silver', 'red', 'brown', 'green', 'orange', 'beige'))
);


CREATE TABLE NOT EXISTS users_cars(
    user_id UUID NOT NULL,
    car_id UUID NOT NULL,
    vin VARCHAR NOT NULL,
    PRIMARY KEY (vin),
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (car_id) REFERENCES cars (id)
);