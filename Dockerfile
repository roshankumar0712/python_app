# Base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy files
COPY requirement.txt .
RUN pip install -r requirement.txt
COPY . .

# Run the app
CMD ["python", "app.py"]

