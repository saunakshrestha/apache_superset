# Apache Superset and ClickHouse Project

This project sets up Apache Superset with ClickHouse on your local macOS using Docker.

## Prerequisites

- [Docker](https://www.docker.com/products/docker-desktop) installed on your macOS.
- [Docker Compose](https://docs.docker.com/compose/install/) installed.

## Project Structure

```
├── docker-compose.yml
├── superset_config.py
└── README.md
```

## Setup Instructions

### 1. Clone the Repository

Clone this repository to your local machine:

```sh
git clone <repository-url>
cd <repository-directory>
```

### 2. Start the Docker Containers

Start the Docker containers using Docker Compose:

```sh
docker-compose up -d
```

### 3. Initialize the Database

Initialize the Superset database:

```sh
docker-compose exec superset superset db upgrade
docker-compose exec superset superset init
```

### 4. Access Superset

Open your web browser and go to `http://localhost:8085` to access Apache Superset.# apache_superset
