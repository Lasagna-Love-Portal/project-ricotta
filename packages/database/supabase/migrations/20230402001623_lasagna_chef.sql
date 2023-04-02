-- Create lasagna_chef table
CREATE TABLE lasagna_chef (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    address_street VARCHAR(255) NOT NULL,
    address_city VARCHAR(255) NOT NULL,
    address_state_province VARCHAR(255) NOT NULL,
    address_postal_zip_code VARCHAR(255) NOT NULL,
    max_distance INT NOT NULL,
    willingness_extra_lasagnas BOOLEAN DEFAULT FALSE,
    dietary_preferences VARCHAR(255) DEFAULT NULL,
    home_phone_number VARCHAR(255) DEFAULT NULL,
    mobile_phone_number VARCHAR(255) DEFAULT NULL,
    middle_name VARCHAR(255) DEFAULT NULL,
    birth_date DATE DEFAULT NULL,
    employer_name VARCHAR(255) DEFAULT NULL,
    facebook_name VARCHAR(255) DEFAULT NULL,
    gender VARCHAR(255) DEFAULT 'Prefer Not To Say',
    show_delivered_meals BOOLEAN DEFAULT FALSE,
    receive_texts BOOLEAN DEFAULT FALSE,
    receive_news_updates BOOLEAN DEFAULT FALSE
);

-- Create eater table
CREATE TABLE eater (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    address_street VARCHAR(255) NOT NULL,
    address_city VARCHAR(255) NOT NULL,
    address_state_province VARCHAR(255) NOT NULL,
    address_postal_zip_code VARCHAR(255) NOT NULL,
    dietary_preferences VARCHAR(255) DEFAULT NULL,
    phone_number VARCHAR(255) NOT NULL
);

-- Create lasagna table
CREATE TABLE lasagna (
    id SERIAL PRIMARY KEY,
    lasagna_chef_id INT NOT NULL,
    eater_id INT NOT NULL,
    FOREIGN KEY (lasagna_chef_id) REFERENCES lasagna_chef(id),
    FOREIGN KEY (eater_id) REFERENCES eater(id)
);