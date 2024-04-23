# Use an official Zulu OpenJDK 17 image as a parent image
FROM azul/zulu-openjdk-alpine:17

# Set the working directory in the container
WORKDIR /wiremock

# Add a user to run the application as non-root for security purposes
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Install curl
RUN apk add --no-cache curl

# Copy the local WireMock standalone JAR and the startup script into the container
COPY --chown=appuser wiremock-standalone-3.5.3.jar start-wiremock.sh /wiremock/

# Copy stubs and scripts into the container
COPY --chown=appuser stubs_folder1 /wiremock/stubs_folder1
COPY --chown=appuser stubs_folder2 /wiremock/stubs_folder2

# Ensure the startup script is executable
RUN chmod +x /wiremock/start-wiremock.sh

# Change user to the non-root user
USER appuser

# Default WireMock port
EXPOSE 8080

# Command to run on container startup
CMD ["/wiremock/start-wiremock.sh"]
