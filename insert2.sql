INSERT INTO public.customer (customer_id, customer_name, dob)
VALUES
('8d6c23a5-44e8-4d2b-a86f-54a98fbd9753', 'Jethro', '2003-07-20'),
('5b32b1e5-7c8f-4d5f-8959-4bf4c0984e70', 'Jeffrey', '1992-12-27')
;

INSERT INTO public.route (route_id, origin_airport_code, destination_airport_code) 
VALUES 
('bbd51bf5-0c06-4c92-80d3-3f8f33501f6b', 'YVR', 'YYZ'),
('f86002e0-8d94-42c5-b08e-45e3589450b0', 'LAX', 'JFK'),
('91cc0d97-ff92-4f45-93f6-68a112a21c8c', 'DFW', 'ORD'),
('37bfb36d-0f58-4262-af29-fb785f336b93', 'SFO', 'ATL'),
('93c8d1d1-1a51-499b-8595-fa8b4d1b5de5', 'LHR', 'CDG')
;

INSERT INTO public.flight_model (flight_model_name_key, manufacturer_name) 
VALUES 
('Boeing 737', 'Boeing'),
('Airbus A320', 'Airbus'),
('Embraer E190', 'Embraer'),
('Bombardier CRJ900', 'Bombardier'),
('Boeing 777', 'Boeing')
;

INSERT INTO public.model_seat (model_seat_id, seat_number, seat_class, flight_model_name_key) 
VALUES 
('79efab4b-5f92-4725-b065-6f9292f678d6', '1A', 'Economy', 'Boeing 737'),
('eed003f6-3b33-4a12-a679-9b92f0e6b9a0', '1B', 'Economy', 'Boeing 737'),
('7b31f23d-d540-4f57-8db0-9e17a9e08da0', '2A', 'Economy', 'Boeing 737'),
('0b8d6e27-3edf-48a6-863f-1b40f2de1925', '2B', 'Economy', 'Boeing 737'),
('871d2a64-4f19-4f4e-a503-69ee939573d5', '1A', 'Economy', 'Airbus A320'),
('2e62e6b5-2674-4fb3-8a9d-8ba3e208da3c', '1B', 'Economy', 'Airbus A320'),
('d509fdd5-1f88-4d8b-b81f-158b75ddc0ab', '2A', 'Economy', 'Airbus A320'),
('b0a06a15-cb5c-4f24-84d3-94e87ff098fd', '2B', 'Economy', 'Airbus A320'),
('17934a90-6cb4-4183-b478-3bb286c04dd7', '1A', 'Economy', 'Embraer E190'),
('57145f8d-6c95-40b4-bbb3-603f8b74c0d8', '1B', 'Economy', 'Embraer E190')
;

INSERT INTO public.flight (flight_id, flight_number, route_id, flight_model_name_key) 
VALUES 
('7a1c6e0b-29c0-46ac-bc15-09e5c712c916', 'AC123', 'bbd51bf5-0c06-4c92-80d3-3f8f33501f6b', 'Boeing 737'),
('d4e9fb27-18f2-4cf9-8e4c-8fbae2d462f1', 'AC456', 'f86002e0-8d94-42c5-b08e-45e3589450b0', 'Airbus A320'),
('d3307bb8-6ae7-4e0b-b780-8719b3a27312', 'AC789', '91cc0d97-ff92-4f45-93f6-68a112a21c8c', 'Embraer E190')
;

INSERT INTO public.flight_schedule (flight_schedule_id, flight_id, departure_date, departure_time)
VALUES
('1661ed8d-d733-4f1e-89f1-980678878305', '7a1c6e0b-29c0-46ac-bc15-09e5c712c916', '2024-05-01', '12:00:00'),
('5b31503f-10aa-4e5e-82e3-2a6b9e2e4e9a', 'd4e9fb27-18f2-4cf9-8e4c-8fbae2d462f1', '2024-05-02', '13:00:00'),
('3e069c8f-bf36-4892-9055-2fc6b68e4ee4', 'd3307bb8-6ae7-4e0b-b780-8719b3a27312', '2024-05-03', '14:00:00')
;

INSERT INTO public.seat_allocation (seat_allocation_id, flight_schedule_id, model_seat_id, available)
VALUES
('b3a1fb7e-42e5-45fd-99e7-7ef23ecf414b', '1661ed8d-d733-4f1e-89f1-980678878305','79efab4b-5f92-4725-b065-6f9292f678d6', true),
('b5e0a22d-95d1-499b-99c8-4aa01302a687', '5b31503f-10aa-4e5e-82e3-2a6b9e2e4e9a','871d2a64-4f19-4f4e-a503-69ee939573d5', true)
;

INSERT INTO public.ticket (ticket_id, customer_id, flight_schedule_id,seat_allocation_id)
VALUES
('dd8c12a7-07ab-4aa8-85e7-46fbfd0d0516', '8d6c23a5-44e8-4d2b-a86f-54a98fbd9753', '1661ed8d-d733-4f1e-89f1-980678878305', 'b3a1fb7e-42e5-45fd-99e7-7ef23ecf414b'),
('2f8e674e-39a6-4c38-9b6a-346c623481d8', '5b32b1e5-7c8f-4d5f-8959-4bf4c0984e70', '5b31503f-10aa-4e5e-82e3-2a6b9e2e4e9a', 'b5e0a22d-95d1-499b-99c8-4aa01302a687')
;