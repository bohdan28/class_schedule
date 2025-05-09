# Class Schedule

This application is designed to display class schedules. It consists of a backend service and a frontend interface, both containerized using Docker.

## Technologies Used

### Backend
- **Java**: JDK 11
- **Gradle**: 8
- **Tomcat**: 9.0.104
- **PostgreSQL**: 15
- **Redis**: Latest
- **Spring Framework**: Used for backend development
- **Redisson**: For caching

### Frontend
- **Node.js**: 14.0
- **React**: Used for building the user interface
- **Redux**: For state management
- **Redux-Saga**: For handling side effects
- **Jest**: For testing

### Containerization
- **Docker**: Used to containerize the application
- **Docker Compose**: For managing multi-container applications

## Prerequisites

Ensure the following tools are installed on your system:
- **Docker**: Version 20.10 or higher
- **Docker Compose**: Version 1.29 or higher
- **Java**: JDK 11
- **Node.js**: Version 14.0 or higher
- **Gradle**: Version 8 or higher

## Environment Variables

The following environment variables are required for the application to run:

### Backend
- `DATABASE_URL`: The JDBC URL for the PostgreSQL database (e.g., `jdbc:postgresql://localhost:5432/class_schedule_db`)
- `POSTGRES_DB`: The name of the PostgreSQL database (default: `class_schedule_db`)
- `POSTGRES_USER`: The username for the PostgreSQL database (default: `class_schedule_dbuser`)
- `POSTGRES_PASSWORD`: The password for the PostgreSQL database (default: `Qazxcd123`)
- `REDIS_ADDRESS`: The Redis server address (e.g., `redis://redis:6379`)

### Frontend
- `NODE_ENV`: The environment mode (e.g., `development` or `production`)

## How to Run

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd class_schedule
2. Build and run the application using Docker Compose:
    ```bash
    docker-compose up --build
3. Access the application:
- Frontend: http://localhost:3000
- Backend: http://localhost:8080

### Project Structure
- <b>Backend</b>: Located in the root directory, built using Gradle and deployed on Tomcat.
- <b>Frontend</b>: Located in the frontend/ directory, built using React and Node.js.
- <b>Database</b>: PostgreSQL is used as the database, with Redis for caching.

### Notes

- Ensure that the REDIS_ADDRESS and DATABASE_URL environment variables are correctly set in your environment or Docker Compose file.
- The backend service depends on Redis and PostgreSQL, so ensure these services are running before starting the backend.