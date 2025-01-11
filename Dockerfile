# Use the official Python image
FROM python:3.10-alpine

# Set the working directory
WORKDIR /app

# Copy the application code
COPY . /app

# Install dependencies
RUN pip install Flask razorpay

# Expose the application port
EXPOSE 5000

# Define the command to run the application
CMD ["python", "main.py"]

