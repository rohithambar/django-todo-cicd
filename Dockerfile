# Use an official Python runtime as a parent image
FROM python:3

RUN pip install django

# Copy the rest of the application's code
COPY . .

# Make port 80001available to the world outside this container
EXPOSE 8001

# Run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]
