# Use official Python image
FROM python:3.9-slim

# Set work directory
WORKDIR /app

# Copy project files
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Run migrations
RUN python manage.py migrate

# Expose port
EXPOSE 8000

# Run the Django server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

