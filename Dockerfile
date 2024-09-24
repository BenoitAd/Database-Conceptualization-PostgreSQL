# Use the official PostgreSQL image from Docker Hub
FROM postgres:latest

# Copy the initialization script (init_base.sql) into the PostgreSQL container's initialization directory
# This script will be executed when the container starts to set up the database schema
COPY init_base.sql /docker-entrypoint-initdb.d/

# Expose PostgreSQL's default port (5432) to allow connections from the host
EXPOSE 5432
