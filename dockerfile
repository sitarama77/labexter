# Use the official Python base image from the Docker Hub
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory content into the container at /app
COPY . /app

# Install any necessary dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set environment variables (optional)
ENV PYTHONUNBUFFERED 1

# Expose a port (optional, change this depending on your app)
EXPOSE 5000

# Command to run your application
CMD ["python", "app.py"]

