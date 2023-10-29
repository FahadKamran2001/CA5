# Use Python as the base image
FROM python:3.8-slim

# Set up the working directory within the container
WORKDIR /app

# Copy the contents of the current directory to the container
COPY . /app

# Install the necessary dependencies
RUN pip install -r requirements.txt

# Expose the port on which the Flask application will run
EXPOSE 5000

# Run the Flask application
CMD ["python", "app.py"]
