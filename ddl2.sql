
-- keeps track of every customer of the airline and only has one line per customer no matter how many times they have bought from us
CREATE TABLE public.customer (
    customer_id UUID PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    dob DATE NOT NULL
);

CREATE TABLE public.flight_model (
    flight_model_name_key VARCHAR(255) PRIMARY KEY,
    manufacturer_name VARCHAR(255) NOT NULL
);

CREATE TABLE public.route (
    route_id UUID PRIMARY KEY,
    origin_airport_code VARCHAR(3) NOT NULL,
    destination_airport_code VARCHAR(3) NOT NULL
);

CREATE TABLE public.model_seat (
    model_seat_id UUID PRIMARY KEY,
    seat_number VARCHAR(255) NOT NULL,
    seat_class VARCHAR(255) NOT NULL,
    flight_model_name_key VARCHAR(255) NOT NULL,
    FOREIGN KEY (flight_model_name_key) REFERENCES public.flight_model(flight_model_name_key)
);

-- tracks basic reusable flight info : different dates will be used in flight schedules table to make unqiue flights
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
    departure_time TIME NOT NULL,
    CONSTRAINT unique_flight_schedule UNIQUE (flight_id, departure_date, departure_time)
);

CREATE TABLE public.seat_allocation (
    seat_allocation_id UUID PRIMARY KEY,
    flight_schedule_id UUID NOT NULL,
    model_seat_id UUID NOT NULL,
    available BOOLEAN NOT NULL default true,
    FOREIGN KEY (flight_schedule_id) REFERENCES public.flight_schedule(flight_schedule_id),
    FOREIGN KEY (model_seat_id) REFERENCES public.model_seat(model_seat_id)
);

CREATE TABLE public.ticket (
    ticket_id UUID PRIMARY KEY,
    customer_id UUID NOT NULL,
    -- flight_id UUID NOT NULL,  the flight id will come from the schedule id
    flight_schedule_id UUID NOT NULL,
    seat_allocation_id UUID NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id),
    FOREIGN KEY (flight_schedule_id) REFERENCES public.flight_schedule(flight_schedule_id),
    FOREIGN KEY (seat_allocation_id) REFERENCES public.seat_allocation(seat_allocation_id)
);