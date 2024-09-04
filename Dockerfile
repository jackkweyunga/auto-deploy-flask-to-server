# Use an official Python runtime as a parent image
FROM python:3.12-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# Create and set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code to the working directory
COPY . /app/

# Expose the port the app runs on
EXPOSE 5000

# Set the environment variable to ensure Python runs in production mode
ENV FLASK_ENV=production

# Command to run the application
CMD ["python", "app.py"]