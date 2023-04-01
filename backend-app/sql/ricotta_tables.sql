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

-- Insert sample data into lasagna_chef table
INSERT INTO lasagna_chef (username, email, password, first_name, last_name, address_street, address_city, address_state_province, address_postal_zip_code, max_distance) VALUES
('chef1', 'chef1@example.com', 'password1', 'John', 'Doe', '123 Main St', 'New York', 'NY', '10001', 10),
('chef2', 'chef2@example.com', 'password2', 'Jane', 'Smith', '456 Market St', 'San Francisco', 'CA', '94105', 15);

-- Insert sample data into eater table
INSERT INTO eater (first_name, last_name, address_street, address_city, address_state_province, address_postal_zip_code, dietary_preferences, phone_number) VALUES
('Eater1', 'One', '789 Broadway St', 'New York', 'NY', '10002', 'Vegetarian', '555-123-1234'),
('Eater2', 'Two', '1011 Pine St', 'San Francisco', 'CA', '94108', 'Vegan', '555-321-4321');

-- Insert sample data into lasagna table
INSERT INTO lasagna (lasagna_chef_id, eater_id) VALUES
(1, 1),
