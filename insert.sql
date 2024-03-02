INSERT INTO public.customers (customer_id, first_name, middle_name, last_name, email, phone_number, dob)
VALUES 
  ('88465809-0db6-4578-aba8-dc4820063f01', 'Mauricio', null, 'Swanborough', 'eswanborough0@twitpic.com', '853-148-3672', '10/4/2023'),
  ('2167371a-7faa-4285-8f9b-8684fe10f455', 'Standford', null, 'Campo', 'ncampo1@slate.com', '584-382-8923', '5/14/2023'),
  ('ec431dd4-3601-43b6-bca4-db30833ca946', 'Reinaldo', null, 'Graveney', 'rgraveney2@theguardian.com', '964-904-9584', '8/15/2023'),
  ('e7a8ce3c-f309-45eb-8be1-4f89e2bc1dff', 'Tito', 'Ashlie', 'Haugg', 'ahaugg3@gizmodo.com', '480-547-7195', '10/9/2023'),
  ('2e563b5d-ac21-4dff-b6fa-465c39d7ea0e', 'Frasquito', 'Inglis', 'Gillies', 'igillies4@nhs.uk', '155-654-5943', '2/13/2023'),
  ('865e9a36-4fdb-4775-bf52-1da4a153bc07', 'Alexis', null, 'Nibley', 'jnibley5@vimeo.com', '693-212-2361', '5/2/2023'),
  ('e8b1645a-0a36-4e92-a6d3-6d52c50b3b01', 'John', 'Robert', 'Doe', 'johndoe@example.com', '555-123-4567', '7/20/1990'),
  ('f946ab6f-0424-4d66-8b76-9e1cc5e1a1f9', 'Jane', 'Marie', 'Smith', 'janesmith@example.com', '555-987-6543', '5/15/1985'),
  ('70a6d071-2412-42bc-a63f-fcb772a4549d', 'Arni', 'Ellen', 'Byart', 'ebyart6@symantec.com', '713-234-1950', '9/15/2023'),
  ('7a256601-7d5c-476c-8a24-6df818c97918', 'Burtie', null, 'Sheivels', 'dsheivels7@fc2.com', null, '12/30/2023'),
  ('4375acbc-72cd-4a8b-a9f7-87222bea4659', 'Carola', 'Paul', 'MacKaig', 'pmackaig8@samsung.com', '381-999-7249', '6/9/2023'),
  ('c5702758-8598-45d8-b1ec-467444b6793f', 'Siusan', null, 'Strathe', 'astrathe9@google.cn', '866-960-8535', '9/5/2023'),
  ('915a2e1e-d134-4c46-9516-6215a0889cfa', 'Davine', 'Louisette', 'Garnul', 'lgarnula@about.me', null, '10/13/2023'),
  ('adcb0683-7e12-445d-a90b-f44ab62459ae', 'Otto', 'Ainslie', 'Parkyn', 'aparkynb@163.com', '503-977-3284', '8/28/2023'),
  ('48893eb8-16f4-4221-9827-b0a465ed775e', 'Rodrigo', 'Ebony', 'Wooler', 'ewoolerc@unesco.org', '759-573-4675', '1/25/2023'),
  ('7cdbd1ba-f06b-4146-89a0-9969c0c7c5ed', 'Gisele', 'Rem', 'MacCleay', 'rmaccleayd@noaa.gov', '779-154-3121', '4/21/2023'),
  ('27164564-cbfc-4fc9-99b9-2dd73f7360d1', 'Kath', null, 'Adran', 'sadrane@ycombinator.com', '717-453-1228', '10/11/2023'),
  ('fcff8906-1dd9-4b4d-b885-b8b202230f7a', 'Eada', 'Eric', 'Shipston', 'eshipstonf@technorati.com', null, '9/18/2023'),
  ('524585ca-2ffc-4ba2-9854-a7e77f7b0cde', 'King', 'Kitti', 'Bortolomei', 'kbortolomeig@1688.com', '196-548-1786', '4/14/2023'),
  ('692373c9-08b9-4e70-af36-e37a81464469', 'Allyn', 'Jacob', 'Fransemai', 'jfransemaih@loc.gov', '975-301-2392', '12/17/2023'),
  ('5f36c8ae-393b-46b1-a40c-ae3eed072831', 'Gerard', 'Shawnee', 'Danniell', 'sdannielli@dion.ne.jp', null, '11/17/2023'),
  ('ac2ea857-8953-4865-8757-b48e3a33aec7', 'Rubetta', 'Ximenez', 'Kilalea', 'xkilaleaj@topsy.com', '973-221-5391', '11/1/2023'),
  ('b249c309-6218-47b5-83df-e114df1910f3', 'Cyndi', 'Farris', 'Lyte', 'flytek@zimbio.com', '213-524-7780', '9/23/2023'),
  ('d80f8335-8746-441a-9cd2-3f2e35551779', 'Darrelle','Barret', 'Pym', 'cpyml@xrea.com', null, '4/16/2023'),
  ('e7e169e9-18ed-4e29-8bd2-b63e605b29ba', 'Jorge', 'Traver', 'Staig', 'tstaigm@cornell.edu', '927-215-8891', '2/20/2023')
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
('c3d4e5f6-a7b8-c9d0-e1f2-a3b4c5d6', 'LHR', 'CDG'),
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
  ('4d5e6f7a', 'GHI012', 'c3d4e5f6-a7b8-c9d0-e1f2-a3b4c5d6', 'Embraer E190', '2024-04-05', '18:20:00'),
  ('5e6f7a8b', 'JKL345', 'e7f8a9b0-c1d2-e3f4a5b6-c7d8e9f0', 'Bombardier CRJ900', '2024-05-01', '09:30:00')
;


INSERT INTO public.tickets (ticket_id, ticket_number, seat_number, seat_class, customer_id, flight_id)
VALUES
  ('001', 'TCK001', 'A1', 'Business', '88465809-0db6-4578-aba8-dc4820063f01', '1a2b3c4d'),
  ('002', 'TCK002', 'B2', 'Economy', '2167371a-7faa-4285-8f9b-8684fe10f455', '2b3c4d5e'),
  ('003', 'TCK003', 'C3', 'First Class', 'ec431dd4-3601-43b6-bca4-db30833ca946', '3c4d5e6f'),
  ('004', 'TCK004', 'D4', 'Economy', 'e7a8ce3c-f309-45eb-8be1-4f89e2bc1dff', '4d5e6f7a'),
  ('005', 'TCK005', 'E5', 'Business', '2e563b5d-ac21-4dff-b6fa-465c39d7ea0e', '5e6f7a8b'),
  ('006', 'TCK006', 'F6', 'First Class', '865e9a36-4fdb-4775-bf52-1da4a153bc07', '1a2b3c4d'),
  ('007', 'TCK007', 'G7', 'Economy', '70a6d071-2412-42bc-a63f-fcb772a4549d', '2b3c4d5e'),
  ('008', 'TCK008', 'H8', 'Business', '7a256601-7d5c-476c-8a24-6df818c97918', '3c4d5e6f'),
  ('009', 'TCK009', 'I9', 'Economy', '4375acbc-72cd-4a8b-a9f7-87222bea4659', '4d5e6f7a'),
  ('010', 'TCK010', 'J10', 'First Class', 'c5702758-8598-45d8-b1ec-467444b6793f', '5e6f7a8b'),
  ('011', 'TCK011', 'K11', 'Economy', '915a2e1e-d134-4c46-9516-6215a0889cfa', '1a2b3c4d'),
  ('012', 'TCK012', 'L12', 'Business', 'adcb0683-7e12-445d-a90b-f44ab62459ae', '2b3c4d5e'),
  ('013', 'TCK013', 'M13', 'First Class', '48893eb8-16f4-4221-9827-b0a465ed775e', '3c4d5e6f'),
  ('014', 'TCK014', 'N14', 'Economy', '7cdbd1ba-f06b-4146-89a0-9969c0c7c5ed', '4d5e6f7a'),
  ('015', 'TCK015', 'O15', 'Business', '27164564-cbfc-4fc9-99b9-2dd73f7360d1', '5e6f7a8b'),
  ('016', 'TCK016', 'P16', 'First Class', 'fcff8906-1dd9-4b4d-b885-b8b202230f7a', '1a2b3c4d'),
  ('017', 'TCK017', 'Q17', 'Economy', '524585ca-2ffc-4ba2-9854-a7e77f7b0cde', '2b3c4d5e'),
  ('018', 'TCK018', 'R18', 'Business', '692373c9-08b9-4e70-af36-e37a81464469', '3c4d5e6f'),
  ('019', 'TCK019', 'S19', 'First Class', '5f36c8ae-393b-46b1-a40c-ae3eed072831', '4d5e6f7a'),
  ('020', 'TCK020', 'T20', 'Economy', 'ac2ea857-8953-4865-8757-b48e3a33aec7', '5e6f7a8b'),
  ('021', 'TCK021', 'U21', 'Business', 'b249c309-6218-47b5-83df-e114df1910f3', '1a2b3c4d'),
  ('022', 'TCK022', 'V22', 'First Class', 'd80f8335-8746-441a-9cd2-3f2e35551779', '2b3c4d5e'),
  ('023', 'TCK023', 'W23', 'Economy', 'e7e169e9-18ed-4e29-8bd2-b63e605b29ba', '3c4d5e6f'),
  ('024', 'TCK024', 'U21', 'Business', 'e8b1645a-0a36-4e92-a6d3-6d52c50b3b01', '3c4d5e6f'),
  ('025', 'TCK025', 'V22', 'First Class', 'f946ab6f-0424-4d66-8b76-9e1cc5e1a1f9', '1a2b3c4d');
