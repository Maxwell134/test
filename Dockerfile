# Use the official Python image as the base image
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt .

# Install any dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . .

# Expose the port on which your Flask app will run
EXPOSE 5000

# Set the environment variable to run Flask in production mode
ENV FLASK_ENV=production

# Command to run your application
CMD ["python3", "main.py"]
