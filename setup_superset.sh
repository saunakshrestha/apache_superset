#!/bin/bash

# Wait for the database to be ready
superset db upgrade

# Create an admin user if it doesn't exist
superset fab create-admin \
    --username admin \
    --firstname Admin \
    --lastname User \
    --email admin@ekghanti.com \
    --password admin@ekg || true

# Initialize Superset
superset init

# Start the Superset server
superset run -h 0.0.0.0 -p 8085 --with-threads --reload --debugger