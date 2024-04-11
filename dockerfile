# Use an official Python runtime as the base image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Flask application code into the container
COPY . /app

# Install any needed dependencies specified in requirements.txt
# Make sure requirements.txt is present in the same directory as Dockerfile
RUN pip install --no-cache-dir flask

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=app.py

# Run the Flask application
CMD ["flask", "run", "--host=0.0.0.0"]
