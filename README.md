# Wiremock App

This project sets up a Docker image based on Wiremock, a tool for mocking HTTP services. When the Docker image is run, a Wiremock container is started, allowing you to easily mock API responses.

## Getting Started

To get started with the Wiremock App, follow these steps:

1. Install Docker on your machine if you haven't already.
2. Clone this repository to your local machine.
3. Build the Docker image by running the following command in the project root directory:

   ```shell
   docker build -t wiremock-app .
   ```
4. Run the Docker image by executing the following command:

   ```shell
   docker run -p 8080:8080 wiremock-server
   ```
5. Alternatively, you can use Docker Compose to run the Docker image by executing the following command:

   ```shell
   docker-compose up
   ```