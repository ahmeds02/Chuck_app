# Use the official Alpine Linux image as base
FROM python:3.9-alpine

# Set the working directory
WORKDIR /app

# Copy the application files into the container
COPY app/ .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port on which the application will run
EXPOSE 5000

# Command to run the application
CMD ["python", "main.py"]
