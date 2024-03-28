DROP TABLE IF EXISTS public.tickets CASCADE;
DROP TABLE IF EXISTS public.flights CASCADE;
DROP TABLE IF EXISTS public.aircrafts CASCADE;
DROP TABLE IF EXISTS public.routes CASCADE;
DROP TABLE IF EXISTS public.airports CASCADE;
DROP TABLE IF EXISTS public.customers CASCADE;

-- DDL for customers table
CREATE TABLE public.customers (
    customer_id UUID PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone_number VARCHAR(255),
    dob DATE NOT NULL
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

-- DDL for aircrafts table
CREATE TABLE public.aircrafts (
    model VARCHAR(255) PRIMARY KEY,
    aircraft_capacity INTEGER NOT NULL
);

-- DDL for flights table
CREATE TABLE public.flights (
    flight_id UUID PRIMARY KEY,
    flight_number VARCHAR(255) NOT NULL,
    route_id UUID NOT NULL,
    flight_model VARCHAR(255) NOT NULL,
    departure_date DATE NOT NULL,
    departure_time TIME NOT NULL,
    FOREIGN KEY (route_id) REFERENCES public.routes(route_id),
    FOREIGN KEY (flight_model) REFERENCES public.aircrafts(model)
);

-- DDL for tickets table
CREATE TABLE public.tickets (
    ticket_id UUID PRIMARY KEY,
    ticket_number VARCHAR(255) NOT NULL,
    seat_number VARCHAR(255) NOT NULL,
    seat_class VARCHAR(255) NOT NULL,
    customer_id UUID NOT NULL,
    customer_name VARCHAR(255) NOT NULL,
    booking_date_time DATE NOT NULL,
    end_date_time DATE NOT NULL,
    flight_id UUID NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id),
    FOREIGN KEY (flight_id) REFERENCES public.flights(flight_id)
);
