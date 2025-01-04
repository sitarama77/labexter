# Use the official OpenJDK image from Docker Hub as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

COPY ./target/ /app/


# Expose the port your app will run on (if applicable)
EXPOSE 8080

# Command to run your Java application
CMD ["java", "-jar", "my-app.jar"]
