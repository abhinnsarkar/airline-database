import uuid
import random
import re
from faker import Faker
from datetime import datetime
import bcrypt

# Initialize Faker for generating random names, emails, and dates
fake = Faker()

# Generate a list of 1000 unique UUIDs
uuids = [str(uuid.uuid4()) for _ in range(1000)]

# Prepare the list of gender options matching the enum in your Java class
genders = ["MALE", "FEMALE", "OTHER"]

# Function to clean phone numbers (digits only)


def clean_phone_number(phone_number):
    return re.sub(r'\D', '', phone_number)  # Remove all non-digit characters

# Function to hash passwords with a lower work factor for faster processing


def hash_password(password):
    return bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt(8)).decode('utf-8')


# Create the SQL insert statements
insert_statements = []

# Limiting to 10 records for initial testing, increase this as needed
for _ in range(1000):  # Change this to 1000 when ready for full data generation
    customer_id = uuids.pop(0)
    fname = fake.first_name()
    lname = fake.last_name()
    email = fake.email()
    phone = clean_phone_number(fake.phone_number())
    password = hash_password(fake.password(length=10))  # Hash the password
    gender = random.choice(genders)
    dob = fake.date_of_birth(
        minimum_age=18, maximum_age=90).strftime('%Y-%m-%d')

    statement = (
        f"INSERT INTO public.customer (customer_id, fname, lname, email, phone, password, gender, dob) "
        f"VALUES ('{customer_id}', '{fname}', '{lname}', '{email}', '{
            phone}', '{password}', '{gender}', '{dob}');"
    )
    insert_statements.append(statement)

# Save the insert statements to a file
sql_file_path = "insert_customers.sql"
with open(sql_file_path, "w") as file:
    for stmt in insert_statements:
        file.write(stmt + "\n")

print(f"SQL insert statements have been saved to {sql_file_path}")
