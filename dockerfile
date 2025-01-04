# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the entire target directory for debugging
COPY ./target/ /app/

# Expose the port the app will run on
EXPOSE 8080

# Run the Java program
CMD ["java", "-jar", "my-java-program.jar"]
