# Use official Python base image
FROM python:3.9.19

# Set working directory inside container
WORKDIR /app

# Copy files into container
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

# Expose port for ECS
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]

