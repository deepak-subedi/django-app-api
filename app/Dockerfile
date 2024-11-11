# app/Dockerfile
FROM python:3.11

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory
WORKDIR /code

# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the project file
COPY . .

# Collect static files
RUN python manage.py collectstatic --noinput

# Start the application
CMD [ "gunicorn", "app.wsgi:application", "--bind", "0.0.0.0:8000" ]
