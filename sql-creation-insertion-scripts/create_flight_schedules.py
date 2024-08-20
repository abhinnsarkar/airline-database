import uuid

# Generate a list of 1000 unique UUIDs
uuids = [str(uuid.uuid4()) for _ in range(1000)]

# Prepare the JavaScript list of UUIDs
uuids_list = uuids.copy()  # Copying the list to ensure we have a working copy

# Create the SQL insert statements
insert_statements = []
seat_classes = ["A", "B", "C", "D", "E", "F"]

for row in range(1, 34):  # Rows 1 to 38
    for seat_class in seat_classes:
        # Take the first UUID and remove it from the list
        model_seat_id = uuids_list.pop(0)
        seat_number = f"{row}{seat_class}"
        statement = (
            f"INSERT INTO public.model_seat (model_seat_id, seat_number, seat_class, flight_model_name_key) "
            f"VALUES ('{model_seat_id}', '{
                seat_number}', 'Standard', 'Airbus A320');"
        )
        insert_statements.append(statement)

# Save the insert statements to a file
sql_file_path = "insert_flight_schedules.sql"
with open(sql_file_path, "w") as file:
    for stmt in insert_statements:
        file.write(stmt + "\n")

print(f"SQL insert statements have been saved to {sql_file_path}")
