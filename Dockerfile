# Step 1: Use official Python base image
FROM python:3.9-slim

# Step 2: Basic Linux command operations (Assignment Requirement)
RUN mkdir /myfolder
RUN echo "Hello from Kartik's Dockerized CD App" > /myfolder/info.txt
RUN ls -l /myfolder
RUN cat /myfolder/info.txt
RUN pwd

# Step 3: Set working directory
WORKDIR /app

# Step 4: Copy project files into container
COPY . .

# Step 5: Install Python dependencies
RUN pip install -r requirements.txt

# Step 6: Expose port 5000
EXPOSE 5000

# Step 7: Start Flask Application
CMD ["python", "app.py"]
