# Use the official Python image from the Docker Hub
FROM python:3.11.4-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file into the container at /app
COPY requirements.txt /app/

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . /app

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable to avoid Python buffering stdout and stderr
ENV PYTHONUNBUFFERED=1

# Run the application
CMD ["python", "app/app.py"]
