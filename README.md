# Notification Service

## Overview
The `notification_service` is a microservice responsible for sending email notifications using SMTP. It is built with **Ruby** and **Sinatra** and runs as a Docker container.

## Features
- Send email notifications via SMTP.
- Lightweight Sinatra-based API.
- Dockerized for easy deployment.

## Technologies Used
- **Ruby**
- **Sinatra**
- **Mail gem** (for SMTP communication)
- **Docker**
- **GitHub Actions** (for future CI/CD integration)

## Setup Instructions
### Prerequisites
- Docker & Docker Compose installed
- SMTP credentials (e.g., Gmail App Passwords or another SMTP provider)

### Clone the Repository
```sh
git clone https://github.com/your-repo/notification_service.git
cd notification_service
```

### Environment Variables
Create a `.env` file or modify `docker-compose.yml` with your SMTP credentials:
```sh
SMTP_ADDRESS=smtp.gmail.com
SMTP_PORT=587
SMTP_USER=your_email@gmail.com
SMTP_PASSWORD=your_app_password
```

### Build and Run the Service
```sh
docker-compose up -d --build
```

### Test the API with Postman or cURL
**POST /send_email**
```sh
curl -X POST http://localhost:8085/send_email \
     -H "Content-Type: application/json" \
     -d '{
          "recipient": "user@example.com",
          "subject": "Test Notification",
          "body": "This is a test email."
        }'
```

## Docker Commands
- **Stop the service:**
  ```sh
  docker-compose down
  ```
- **Check logs:**
  ```sh
  docker logs -f notification-service
  ```

## Future Improvements
- Implement message queue support (RabbitMQ/Kafka).
- Store notification logs in a database (MongoDB).
- Improve error handling and retry mechanisms.

## Maintainers
- [Cristian Aleman](https://github.com/AlemCB13)