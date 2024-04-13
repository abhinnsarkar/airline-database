DROP TABLE IF EXISTS public.aircraft_models CASCADE;
DROP TABLE IF EXISTS public.aircraft_seat CASCADE;
DROP TABLE IF EXISTS public.aircrafts CASCADE;
DROP TABLE IF EXISTS public.airports CASCADE;
DROP TABLE IF EXISTS public.customers CASCADE;
DROP TABLE IF EXISTS public.flights CASCADE;
DROP TABLE IF EXISTS public.routes CASCADE;
DROP TABLE IF EXISTS public.seat_booking CASCADE;
DROP TABLE IF EXISTS public.servicing CASCADE;
DROP TABLE IF EXISTS public.tickets CASCADE;

-- DDL for customers table
CREATE TABLE public.customers (
    customer_id UUID PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone_number VARCHAR(255),
    dob DATE NOT NULL,
    effective_start DATE NOT NULL,
    effective_end DATE NOT null    
);

-- DDL for airports table
CREATE TABLE public.airports (
    airport_code VARCHAR(3) PRIMARY KEY,
    city_name VARCHAR(255) NOT NULL,
    state_province_name VARCHAR(255) NOT NULL,
    country_name VARCHAR(255) NOT NULL
);

-- DDL for routes table
CREATE TABLE public.routes (
    route_id UUID PRIMARY KEY,
    origin_airport_code VARCHAR(3) NOT NULL,
    destination_airport_code VARCHAR(3) NOT NULL,
    FOREIGN KEY (origin_airport_code) REFERENCES public.airports(airport_code),
    FOREIGN KEY (destination_airport_code) REFERENCES public.airports(airport_code)
);

-- DDL for aircraft_models table
CREATE TABLE public.aircraft_models (
    model VARCHAR(255) PRIMARY KEY,
    manufacturer VARCHAR(255) NOT NULL
    -- aircraft_capacity INTEGER NOT NULL
);

CREATE TABLE public.aircrafts (
    aircraft_id UUID PRIMARY KEY,
    aircraft_model VARCHAR(255) NOT NULL,
    FOREIGN KEY (aircraft_model) REFERENCES public.aircraft_models(model)
);

CREATE TABLE public.aircraft_seat (
    seat_id UUID PRIMARY KEY,
    seat_number VARCHAR(255) NOT NULL,
    aircraft_model VARCHAR(255) NOT NULL,
    seat_class VARCHAR(255) NOT NULL,
    FOREIGN KEY (aircraft_model) REFERENCES public.aircraft_models(model)
);

CREATE TABLE public.servicing (
    servicing_id UUID PRIMARY KEY,
    aircraft_id UUID NOT NULL,
    servicing_date DATE NOT NULL,
    technician VARCHAR(255) NOT NULL,
    FOREIGN KEY (aircraft_id) REFERENCES public.aircrafts(aircraft_id)
);

-- DDL for flights table
CREATE TABLE public.flights (
    flight_id UUID PRIMARY KEY,
    flight_number VARCHAR(255) NOT NULL,
    route_id UUID NOT NULL,
    flight_model VARCHAR(255) NOT NULL,
    departure_date DATE NOT NULL,
    departure_time TIME NOT NULL,
    effective_start DATE NOT NULL,
    effective_end DATE NOT null,
    FOREIGN KEY (route_id) REFERENCES public.routes(route_id),
    FOREIGN KEY (flight_model) REFERENCES public.aircraft_models(model)
);

CREATE TABLE public.seat_booking (
    seat_id UUID NOT NULL,
    flight_id UUID NOT NULL,
    available BOOLEAN NOT NULL,
    effective_start DATE NOT NULL,
    effective_end DATE NOT null,
    PRIMARY KEY (seat_id, flight_id),
    FOREIGN KEY (seat_id) REFERENCES public.aircraft_seat(seat_id),
    FOREIGN KEY (flight_id) REFERENCES public.flights(flight_id)
);

-- DDL for tickets table
CREATE TABLE public.tickets (
    ticket_id UUID PRIMARY KEY,
    ticket_number VARCHAR(255) NOT NULL,
    -- seat_number VARCHAR(255) NOT NULL,
    -- seat_class VARCHAR(255) NOT NULL,
    seat_id UUID NOT NULL,
    flight_id UUID NOT NULL,
    customer_id UUID NOT NULL,
    customer_name VARCHAR(255) NOT NULL,
    effective_start DATE NOT NULL,
    effective_end DATE NOT null,
    FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id),
    FOREIGN KEY (seat_id, flight_id) REFERENCES public.seat_booking(seat_id, flight_id)
    -- FOREIGN KEY (flight_id) REFERENCES public.flights(flight_id),
    -- FOREIGN KEY (seat_id) REFERENCES public.seat_booking(seat_id),
    -- FOREIGN KEY (flight_id) REFERENCES public.seat_booking(flight_id)
);

CREATE TABLE public.flights_schedule (
    -- schedule_id UUID PRIMARY KEY,
    flight_id UUID NOT NULL,
    FOREIGN KEY (flight_id) REFERENCES public.flights(flight_id)
);