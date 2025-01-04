# Use an official OpenJDK image as a base
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Java source file into the container
COPY Sample.java /app/

# Compile the Java program
RUN javac Sample.java

# Run the Java program
CMD ["java", "Sample"]
