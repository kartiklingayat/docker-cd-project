# Step 1: Use official Python base image
FROM python:3.9-slim

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy project files into container
COPY . .

# Step 4: Install Python dependencies
RUN pip install -r requirements.txt

# Step 5: Expose port 5000
EXPOSE 5000

# Step 6: Start the application
CMD ["python", "app.py"]
