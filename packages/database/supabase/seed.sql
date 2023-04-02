
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
(1, 1);