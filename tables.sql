CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE users(
    id UUID DEFAULT UUID_GENERATE_V4(),
    first_name VARCHAR NOT NULL,
    middle_initial CHAR,
    last_name VARCHAR NOT NULL,
    married_flag BOOLEAN DEFAULT FALSE,
    characteristics JSON DEFAULT NULL,
    preferred_name VARCHAR,
    hair_color VARCHAR,
    eye_color VARCHAR,
    age SMALLINT,
    updated_at TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY (id)
);


CREATE TABLE cars(
    id UUID DEFAULT UUID_GENERATE_V4(),
    year SMALLINT NOT NULL DEFAULT EXTRACT(YEAR FROM NOW()),
    make VARCHAR,
    model VARCHAR NOT NULL,
    color VARCHAR,
    PRIMARY KEY (id),
    CONSTRAINT valid_color_check CHECK(color IN('white', 'black', 'gray', 'blue', 'silver', 'red', 'brown', 'green', 'orange', 'beige'))
);


CREATE TABLE users_cars(
    user_id UUID NOT NULL,
    car_id UUID NOT NULL,
    vin VARCHAR NOT NULL,
    PRIMARY KEY (vin),
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (car_id) REFERENCES cars (id)
);