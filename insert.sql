INSERT INTO public.customers (customer_id, first_name, middle_name, last_name, email, phone_number, dob)
VALUES 
  ('88465809-0db6-4578-aba8-dc4820063f01', 'Mauricio', null, 'Swanborough', 'eswanborough0@twitpic.com', '853-148-3672', '10/4/2023'),
  ('2167371a-7faa-4285-8f9b-8684fe10f455', 'Standford', null, 'Campo', 'ncampo1@slate.com', '584-382-8923', '5/14/2023'),
  ('ec431dd4-3601-43b6-bca4-db30833ca946', 'Reinaldo', null, 'Graveney', 'rgraveney2@theguardian.com', '964-904-9584', '8/15/2023'),
  ('e7a8ce3c-f309-45eb-8be1-4f89e2bc1dff', 'Tito', 'Ashlie', 'Haugg', 'ahaugg3@gizmodo.com', '480-547-7195', '10/9/2023'),
  ('2e563b5d-ac21-4dff-b6fa-465c39d7ea0e', 'Frasquito', 'Inglis', 'Gillies', 'igillies4@nhs.uk', '155-654-5943', '2/13/2023'),
;

 
INSERT INTO public.airports (airport_code, city_name, state_province_name, country_name)
VALUES
('LAX', 'Los Angeles', 'California', 'United States Of America'),
('YVR', 'Vancouver', 'British Columbia', 'Canada'),
('BOM', 'Mumbai', 'Maharashtra', 'India'),
('JFK', 'New York', 'New York', 'United States Of America'),
('LHR', 'London', 'England', 'United Kingdom'),
('CDG', 'Paris', 'Ile-de-France', 'France'),
('HND', 'Tokyo', 'Tokyo', 'Japan'),
('SYD', 'Sydney', 'New South Wales', 'Australia')
;


INSERT INTO public.routes (route_id, origin_airport_code, destination_airport_code)
VALUES
('a9f0a3c1-14a8-4a57-8a93-a7c84e8de456', 'BOM', 'YVR'), 
('3b2f56d7-ec81-41db-951c-c4bf98b14a23', 'LAX', 'YVR'),
('e1f2a3b4-c5d6-e7f8-a9b0-c1d2e3f4a5b6', 'JFK', 'LHR'),
('123e4567-e89b-12d3-a456-426614174000', 'LHR', 'CDG'),
('e7f8a9b0-c1d2-e3f4a5b6-c7d8e9f0', 'CDG', 'HND'),
('a1b2c3d4-e5f6-a7b8-c9d0-e1f2', 'HND', 'SYD'),
('c5d6e7f8-a9b0-c1d2-e3f4a5b6', 'SYD', 'JFK')
;


INSERT INTO public.aircrafts (model, aircraft_capacity)
VALUES
  ('Airbus A320', 180),
  ('Boeing 747', 416),
  ('Embraer E190', 114),
  ('Bombardier CRJ900', 76),
  ('Boeing 777', 368),
  ('Boeing 737', 150)
;


INSERT INTO public.flights (flight_id, flight_number, route_id, flight_model, departure_date, departure_time)
VALUES
  ('1a2b3c4d', 'ABC123', 'a9f0a3c1-14a8-4a57-8a93-a7c84e8de456', 'Boeing 737', '2024-01-20', '12:00:00'),
  ('2b3c4d5e', 'XYZ456', '3b2f56d7-ec81-41db-951c-c4bf98b14a23', 'Airbus A320', '2024-02-15', '14:30:00'),
  ('3c4d5e6f', 'DEF789', 'e1f2a3b4-c5d6-e7f8-a9b0-c1d2e3f4a5b6', 'Boeing 777', '2024-03-10', '08:45:00'),
  ('4d5e6f7a', 'GHI012', '123e4567-e89b-12d3-a456-426614174000', 'Embraer E190', '2024-04-05', '18:20:00'),
  ('5e6f7a8b', 'JKL345', 'e7f8a9b0-c1d2-e3f4a5b6-c7d8e9f0', 'Bombardier CRJ900', '2024-05-01', '09:30:00')
;

INSERT INTO public.tickets (ticket_id, ticket_number, seat_number, seat_class, customer_id, customer_name, booking_date_time, end_date_time, flight_id)
VALUES
  (1, 'TCK001', 'A1', 'Business', '88465809-0db6-4578-aba8-dc4820063f01', 'John Doe', '2024-01-19 23:59:00', '9999-12-31 23:59:00', '1a2b3c4d'),
  (2, 'TCK002', 'B2', 'Economy', '2167371a-7faa-4285-8f9b-8684fe10f455', 'Jane Smith', '2024-02-14 23:59:00', '9999-12-31 23:59:00', '2b3c4d5e'),
  (3, 'TCK003', 'C3', 'First Class', 'ec431dd4-3601-43b6-bca4-db30833ca946', 'Alice Johnson', '2024-03-09 23:59:00', '9999-12-31 23:59:00', '3c4d5e6f'),
  (4, 'TCK004', 'D4', 'Economy', 'e7a8ce3c-f309-45eb-8be1-4f89e2bc1dff', 'Bob Brown', '2024-04-04 23:59:00', '9999-12-31 23:59:00', '4d5e6f7a'),
  (5, 'TCK005', 'E5', 'Business', '2e563b5d-ac21-4dff-b6fa-465c39d7ea0e', 'Charlie Davis', '2024-04-30 23:59:00', '9999-12-31 23:59:00', '5e6f7a8b'),
  (6, 'TCK006', 'F6', 'First Class', '865e9a36-4fdb-4775-bf52-1da4a153bc07', 'Emma Wilson', '2024-05-01 23:59:00', '9999-12-31 23:59:00', '1a2b3c4d'),
  (7, 'TCK007', 'G7', 'Economy', '70a6d071-2412-42bc-a63f-fcb772a4549d', 'David Garcia', '2024-09-14 23:59:00', '9999-12-31 23:59:00', '2b3c4d5e'),
  (8, 'TCK008', 'H8', 'Business', '7a256601-7d5c-476c-8a24-6df818c97918', 'Olivia Martinez', '2024-12-29 23:59:00', '9999-12-31 23:59:00', '3c4d5e6f'),
  (9, 'TCK009', 'I9', 'Economy', '4375acbc-72cd-4a8b-a9f7-87222bea4659', 'James Wilson', '2024-06-08 23:59:00', '9999-12-31 23:59:00', '4d5e6f7a'),
  (10, 'TCK010', 'J10', 'First Class', 'c5702758-8598-45d8-b1ec-467444b6793f', 'Sophia Rodriguez', '2024-08-30 23:59:00', '9999-12-31 23:59:00', '5e6f7a8b'),
  (11, 'TCK011', 'K11', 'Economy', '915a2e1e-d134-4c46-9516-6215a0889cfa', 'Liam Moore', '2024-10-12 23:59:00', '9999-12-31 23:59:00', '1a2b3c4d'),
  (12, 'TCK012', 'L12', 'Business', 'adcb0683-7e12-445d-a90b-f44ab62459ae', 'Ava Lee', '2024-01-24 23:59:00', '9999-12-31 23:59:00', '2b3c4d5e'),
  (13, 'TCK013', 'M13', 'First Class', '48893eb8-16f4-4221-9827-b0a465ed775e', 'Noah Brown', '2024-04-20 23:59:00', '9999-12-31 23:59:00', '3c4d5e6f'),
  (14, 'TCK014', 'N14', 'Economy', '7cdbd1ba-f06b-4146-89a0-9969c0c7c5ed', 'Isabella Taylor', '2024-09-04 23:59:00', '9999-12-31 23:59:00', '4d5e6f7a'),
  (15, 'TCK015', 'O15', 'Business', '27164564-cbfc-4fc9-99b9-2dd73f7360d1', 'William Hernandez', '2024-11-10 23:59:00', '9999-12-31 23:59:00', '5e6f7a8b'),
  (16, 'TCK016', 'P16', 'First Class', 'fcff8906-1dd9-4b4d-b885-b8b202230f7a', 'Mia Martinez', '2024-09-17 23:59:00', '9999-12-31 23:59:00', '1a2b3c4d'),
  (17, 'TCK017', 'Q17', 'Economy', '524585ca-2ffc-4ba2-9854-a7e77f7b0cde', 'Ethan Johnson', '2024-04-13 23:59:00', '9999-12-31 23:59:00', '2b3c4d5e'),
  (18, 'TCK018', 'R18', 'Business', '692373c9-08b9-4e70-af36-e37a81464469', 'Amelia Brown', '2024-12-16 23:59:00', '9999-12-31 23:59:00', '3c4d5e6f'),
  (19, 'TCK019', 'S19', 'First Class', '5f36c8ae-393b-46b1-a40c-ae3eed072831', 'Oliver Garcia', '2024-11-20 23:59:00', '9999-12-31 23:59:00', '4d5e6f7a'),
  (20, 'TCK020', 'T20', 'Economy', 'ac2ea857-8953-4865-8757-b48e3a33aec7', 'Sophia Rodriguez', '2024-12-15 23:59:00', '9999-12-31 23:59:00', '5e6f7a8b'),
  (21, 'TCK021', 'U21', 'Business', 'b249c309-6218-47b5-83df-e114df1910f3', 'James Wilson', '2025-01-10 23:59:00', '9999-12-31 23:59:00', '1a2b3c4d'),
  (22, 'TCK022', 'V22', 'First Class', 'd80f8335-8746-441a-9cd2-3f2e35551779', 'Sophia Rodriguez', '2025-02-05 23:59:00', '9999-12-31 23:59:00', '2b3c4d5e'),
  (23, 'TCK023', 'W23', 'Economy', 'e7e169e9-18ed-4e29-8bd2-b63e605b29ba', 'Liam Moore', '2025-03-02 23:59:00', '9999-12-31 23:59:00', '3c4d5e6f'),
  (24, 'TCK024', 'U21', 'Business', 'e8b1645a-0a36-4e92-a6d3-6d52c50b3b01', 'Ava Lee', '2025-03-29 23:59:00', '9999-12-31 23:59:00', '3c4d5e6f'),
  (25, 'TCK025', 'V22', 'First Class', 'f946ab6f-0424-4d66-8b76-9e1cc5e1a1f9', 'William Hernandez', '2025-04-23 23:59:00', '9999-12-31 23:59:00', '1a2b3c4d');

