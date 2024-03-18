FROM apache/airflow:2.8.3-python3.9

# Set the user to root so we can install dependencies
USER root

# Install additional packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# You can add any additional dependencies you need here using apt-get or pip

# Set back to the airflow user
USER airflow

# Expose the webserver port
EXPOSE 8080
