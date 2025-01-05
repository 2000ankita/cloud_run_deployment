# Use a lightweight Python base image
FROM python:3.11.1-slim

# Set the working directory
WORKDIR /app

# Copy the application code to the container
COPY app.py .

# Install Flask
RUN pip install --no-cache-dir flask

# Expose the port Flask will run on
EXPOSE 8080

# Define the command to run the application
CMD ["python3", "app.py"]
