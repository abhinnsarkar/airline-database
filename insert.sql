-- Insert statements for customers
INSERT INTO public.customers (customer_id, first_name, middle_name, last_name, email, phone_number, dob)
VALUES 
    ('5a0e20eb-6a1a-46e3-981e-b8325a72e278', 'John', NULL, 'Doe', 'john.doe@example.com', '123-456-7890', '1990-01-01'),
    ('77e01be7-dbd2-4f1d-9f41-7aeb3c3c624d', 'Jane', NULL, 'Doe', 'jane.doe@example.com', '123-456-7890', '1992-03-15'),
    ('22a9f2cb-6d90-4c3e-8df8-6fb530d729af', 'Alice', 'Marie', 'Smith', 'alice.smith@example.com', '123-456-7890', '1985-07-25'),
    ('bfc17748-1508-4b3b-94bb-f05f7b5a918e', 'Bob', NULL, 'Johnson', 'bob.johnson@example.com', '123-456-7890', '1978-12-10'),
    ('1249bfa2-df97-4a11-8461-8ebc73cfd926', 'Eve', NULL, 'Brown', 'eve.brown@example.com', '123-456-7890', '1998-09-30');

-- Insert statements for airports
INSERT INTO public.airports (airport_code, city_name, state_province_name, country_name)
VALUES 
    ('YVR', 'Vancouver', 'British Columbia', 'Canada'),
    ('YYZ', 'Toronto', 'Ontario', 'Canada'),
    ('YUL', 'Montreal', 'Quebec', 'Canada'),
    ('YYC', 'Calgary', 'Alberta', 'Canada'),
    ('YOW', 'Ottawa', 'Ontario', 'Canada');

-- Insert statements for routes
INSERT INTO public.routes (route_id, origin_airport_code, destination_airport_code)
VALUES 
    ('f7154a4b-6bbd-4b0f-8b7c-99b98ac20c12', 'YVR', 'YYZ'),
    ('e32692a3-8b51-4e7f-bd94-b4aa1a361b0e', 'YYZ', 'YUL'),
    ('e595adfc-6d47-4df8-b51b-330b670b351f', 'YUL', 'YYC'),
    ('50f2a7ec-c643-4e93-bc95-7c304c1d0c10', 'YYC', 'YOW'),
    ('9e92c163-66bb-41db-9b4b-57574f90cbb1', 'YOW', 'YVR');

-- Insert statements for aircrafts
INSERT INTO public.aircrafts (model, aircraft_capacity)
VALUES 
    ('Boeing 737', 189),
    ('Airbus A320', 150),
    ('Boeing 787', 242),
    ('Airbus A330', 300),
    ('Embraer E190', 97);

-- Insert statements for flights
INSERT INTO public.flights (flight_id, flight_number, route_id, flight_model, departure_date, departure_time)
VALUES 
    ('dfe82b4b-f2b8-4436-a2d0-cf0d77d46de7', 'AC100', 'f7154a4b-6bbd-4b0f-8b7c-99b98ac20c12', 'Boeing 737', '2024-03-01', '08:00:00'),
    ('4f0dd646-b6bc-47d5-a2d3-0ebe2a0e01a6', 'AC200', 'e32692a3-8b51-4e7f-bd94-b4aa1a361b0e', 'Airbus A320', '2024-03-01', '10:00:00'),
    ('303c78cf-5e5e-448c-88b2-9c136b8a7759', 'AC300', 'e595adfc-6d47-4df8-b51b-330b670b351f', 'Boeing 787', '2024-03-01', '12:00:00'),
    ('bfbb8e7e-1d2e-4347-b43f-1dab457aa8a8', 'AC400', '50f2a7ec-c643-4e93-bc95-7c304c1d0c10', 'Airbus A330', '2024-03-01', '14:00:00'),
    ('d3a26b6c-0db8-4e84-8a5a-c3e624b3a43b', 'AC500', '9e92c163-66bb-41db-9b4b-57574f90cbb1', 'Embraer E190', '2024-03-01', '16:00:00');

-- Insert statements for tickets
INSERT INTO public.tickets (ticket_id, ticket_number, seat_number, seat_class, customer_id, customer_name, booking_date_time, end_date_time, flight_id)
VALUES 
    ('6d56bf65-3f41-40fc-9d85-cc13d787a9cb', 'TCKT1001', 'A1', 'Business', '5a0e20eb-6a1a-46e3-981e-b8325a72e278', 'John Doe', '2024-02-28 10:00:00', '9999-12-31 23:59:00', 'dfe82b4b-f2b8-4436-a2d0-cf0d77d46de7'),
    ('208a1524-912f-4f38-a8b0-304c2d3178ae', 'TCKT1002', 'B2', 'Economy', '77e01be7-dbd2-4f1d-9f41-7aeb3c3c624d', 'Jane Doe', '2024-02-28 10:30:00', '9999-12-31 23:59:00', '4f0dd646-b6bc-47d5-a2d3-0ebe2a0e01a6'),
    ('9624f19b-7f14-4686-84e4-3e2a93ff93c2', 'TCKT1004', 'D4', 'Economy', 'bfc17748-1508-4b3b-94bb-f05f7b5a918e', 'Bob Johnson', '2024-02-28 11:00:00', '9999-12-31 23:59:00', '303c78cf-5e5e-448c-88b2-9c136b8a7759'),
    ('e89b23bc-af90-4666-bb4d-9b4d899d6501', 'TCKT1005', 'E5', 'Business', '1249bfa2-df97-4a11-8461-8ebc73cfd926', 'Eve Brown', '2024-02-28 11:30:00', '9999-12-31 23:59:00', 'bfbb8e7e-1d2e-4347-b43f-1dab457aa8a8'),
    ('faa412f1-9370-4e39-a496-44b62a27f2ab', 'TCKT1006', 'F6', 'Economy', '5a0e20eb-6a1a-46e3-981e-b8325a72e278', 'John Doe', '2024-02-29 12:00:00', '9999-12-31 23:59:00', 'd3a26b6c-0db8-4e84-8a5a-c3e624b3a43b');
