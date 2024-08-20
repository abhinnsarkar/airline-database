DROP TYPE IF EXISTS gender CASCADE;

-- Drop existing tables if they exist
DROP TABLE IF EXISTS public.customer CASCADE;
DROP TABLE IF EXISTS public.flight_model CASCADE;
DROP TABLE IF EXISTS public.airport CASCADE;
DROP TABLE IF EXISTS public.route CASCADE;
DROP TABLE IF EXISTS public.model_seat CASCADE;
DROP TABLE IF EXISTS public.flight CASCADE;
DROP TABLE IF EXISTS public.flight_schedule CASCADE;
DROP TABLE IF EXISTS public.seat_allocation CASCADE;
DROP TABLE IF EXISTS public.ticket CASCADE;
DROP TABLE IF EXISTS public.plane_map_imgs CASCADE;

-- Create tables in the correct order

CREATE TYPE gender AS ENUM ('MALE', 'FEMALE', 'OTHER');

CREATE TABLE public.customer (
    customer_id UUID PRIMARY KEY,
    fname VARCHAR(255) NOT NULL,
    lname VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL,
    gender gender NOT null,
    password VARCHAR(255) NOT null,
    dob DATE NOT NULL
);

CREATE TABLE public.flight_model (
    flight_model_name_key VARCHAR(255) PRIMARY KEY,
    manufacturer_name VARCHAR(255) NOT NULL
);

CREATE TABLE public.airport (
    airport_code VARCHAR PRIMARY KEY,
    city_name VARCHAR NOT NULL
);

CREATE TABLE public.route (
    route_id UUID PRIMARY KEY,
    origin_airport_code VARCHAR(3) NOT NULL,
    destination_airport_code VARCHAR(3) NOT NULL,
    FOREIGN KEY (origin_airport_code) REFERENCES public.airport(airport_code),
    FOREIGN KEY (destination_airport_code) REFERENCES public.airport(airport_code)
);

CREATE TABLE public.model_seat (
    model_seat_id UUID PRIMARY KEY,
    seat_number VARCHAR(255) NOT NULL,
    seat_class VARCHAR(255) NOT NULL,
    flight_model_name_key VARCHAR(255) NOT NULL,
    FOREIGN KEY (flight_model_name_key) REFERENCES public.flight_model(flight_model_name_key)
);

CREATE TABLE public.flight (
    flight_id UUID PRIMARY KEY,
    flight_number VARCHAR(255) NOT NULL,
    route_id UUID NOT NULL,
    flight_model_name_key VARCHAR(255) NOT NULL,
    FOREIGN KEY (route_id) REFERENCES public.route(route_id),
    FOREIGN KEY (flight_model_name_key) REFERENCES public.flight_model(flight_model_name_key)
);

CREATE TABLE public.flight_schedule (
    flight_schedule_id UUID PRIMARY KEY,
    flight_id UUID NOT NULL,
    departure_date DATE NOT NULL,
    departure_time TIME WITHOUT TIME ZONE NOT NULL,
    CONSTRAINT unique_flight_schedule_constraint UNIQUE (flight_id, departure_date, departure_time),
    FOREIGN KEY (flight_id) REFERENCES public.flight(flight_id)
);

CREATE TABLE public.seat_allocation (
    seat_allocation_id UUID PRIMARY KEY,
    flight_schedule_id UUID NOT NULL,
    model_seat_id UUID NOT NULL,
    available BOOLEAN NOT NULL DEFAULT true,
    customer_id UUID,
    CONSTRAINT unique_seat_allocation_constraint UNIQUE (flight_schedule_id, model_seat_id),
    FOREIGN KEY (flight_schedule_id) REFERENCES public.flight_schedule(flight_schedule_id),
    FOREIGN KEY (model_seat_id) REFERENCES public.model_seat(model_seat_id),
    FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id) ON DELETE SET NULL
);

CREATE TABLE public.ticket (
    ticket_id UUID PRIMARY KEY,
    customer_id UUID NOT NULL,
    flight_schedule_id UUID NOT NULL,
    seat_allocation_id UUID NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id),
    FOREIGN KEY (flight_schedule_id) REFERENCES public.flight_schedule(flight_schedule_id),
    FOREIGN KEY (seat_allocation_id) REFERENCES public.seat_allocation(seat_allocation_id)
);

CREATE TABLE public.plane_map_imgs (
    flight_model_name_key VARCHAR(255) PRIMARY KEY,
    img_url VARCHAR,
    FOREIGN KEY (flight_model_name_key) REFERENCES public.flight_model(flight_model_name_key)
);