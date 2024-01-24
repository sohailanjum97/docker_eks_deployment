# Use an official Python runtime as a base image
FROM python:3.8

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy requirements.txt to the working directory
COPY ./requirements.txt ./

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --upgrade Flask Werkzeug

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port on which your app runs
EXPOSE 3000

# Define the command to run your application
CMD ["python", "app.py"]
