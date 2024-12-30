# Use the official Apache Superset image as the base
FROM apache/superset:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the setup script into the container (ensure the file is in the same directory as the Dockerfile)
COPY setup_superset.sh /app/setup_superset.sh


# Install ClickHouse DB driver and PostgreSQL dependencies
USER root
#netcat isntallation
RUN apt-get update && apt-get install -y netcat-openbsd
# Make the setup script executable
RUN chmod +x /app/setup_superset.sh
RUN pip install clickhouse-connect psycopg2-binary

# Expose the required ports
EXPOSE 8085 8088 9000 8123 5432

# Set the entrypoint to run the setup script with `sh`
# ENTRYPOINT ["/app/setup_superset.sh"]
COPY setup_superset.sh /usr/local/bin/

# Make the script executable
RUN chmod +x /usr/local/bin/setup_superset.sh

# Switch back to the default user for security purposes
USER superset
