
DROP TABLE IF EXISTS public.tickets CASCADE;
DROP TABLE IF EXISTS public.flights CASCADE;
DROP TABLE IF EXISTS public.aircrafts CASCADE;
DROP TABLE IF EXISTS public.routes CASCADE;
DROP TABLE IF EXISTS public.airports CASCADE;
DROP TABLE IF EXISTS public.customers CASCADE;

DROP TABLE IF EXISTS public.students CASCADE;
DROP TABLE IF EXISTS public.teachers CASCADE;


CREATE TABLE IF NOT EXISTS public.customers (
    customer_id VARCHAR PRIMARY KEY,
    first_name VARCHAR,
    middle_name VARCHAR,
    last_name VARCHAR,
    email VARCHAR,
    phone_number VARCHAR,
    dob DATE
);

CREATE TABLE IF NOT EXISTS public.airports (    
    airport_code VARCHAR PRIMARY KEY,
    city_name VARCHAR,
    state_province_name VARCHAR,
    country_name VARCHAR
);

CREATE TABLE IF NOT EXISTS public.routes (
    route_id VARCHAR PRIMARY KEY,
    origin_airport_code VARCHAR NOT NULL REFERENCES public.airports(airport_code),
    destination_airport_code VARCHAR NOT NULL REFERENCES public.airports(airport_code)
);


CREATE TABLE IF NOT EXISTS public.aircrafts (
    model VARCHAR PRIMARY KEY,
    aircraft_capacity INTEGER
);

CREATE TABLE IF NOT EXISTS public.flights (
    flight_id VARCHAR PRIMARY KEY,
    flight_number VARCHAR,
    route_id VARCHAR NOT NULL REFERENCES public.routes(route_id),
    flight_model VARCHAR NOT NULL REFERENCES public.aircrafts(model),
    departure_date DATE NOT NULL,
    departure_time TIME NOT NULL 
);


CREATE TABLE IF NOT EXISTS public.tickets (
    ticket_id VARCHAR PRIMARY KEY,
    ticket_number VARCHAR,
    seat_number VARCHAR,
    seat_class VARCHAR,
    customer_id VARCHAR NOT NULL REFERENCES public.customers(customer_id),
    flight_id VARCHAR NOT NULL REFERENCES public.flights(flight_id)
);


CREATE TABLE IF NOT EXISTS public.students (
    student_id VARCHAR PRIMARY KEY,
    student_name VARCHAR, 
    class_name VARCHAR
);

CREATE TABLE IF NOT EXISTS public.teachers (
    teacher_id VARCHAR PRIMARY KEY,
    teacher_name VARCHAR, 
    class_name VARCHAR

);




