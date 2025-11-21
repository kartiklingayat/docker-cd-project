📘 DevOps FAT2 Assignment — Docker + Linux Commands + Flask App
🚀 Project Overview

This project demonstrates how to build a Flask web application, containerize it using Docker, and include basic Linux command operations inside the Dockerfile as required.

The project also includes:

✔️ GitHub version control

✔️ Docker image build

✔️ Docker Hub upload

✔️ Basic Linux commands inside Dockerfile

✔️ Flask application (app.py)

✔️ Professional README with DevOps concepts

📁 Repository & DockerHub Links

🔗 GitHub Repository (Submission):
https://github.com/kartiklingayat/docker-cd-project

🔗 Docker Hub Image:
https://hub.docker.com/r/kartiklingayat/kartik-cd-app

🔗 Docker Hub Profile:
https://hub.docker.com/repositories/kartiklingayat

🧩 1. Five DevOps Concepts
1️⃣ Continuous Integration (CI)

Code is merged frequently into a shared repository where automated tests ensure stability.

2️⃣ Continuous Deployment (CD)

Every code change that passes tests is automatically deployed to production.

3️⃣ Infrastructure as Code (IaC)

Managing infrastructure using config files instead of manual steps (e.g., Terraform).

4️⃣ Monitoring & Logging

Application performance, system logs, and metrics help maintain system health.

5️⃣ Containerization

Packaging apps with dependencies inside isolated containers (Docker) for consistent deployments.

🐳 Dockerfile Used (With Basic Linux Commands — REQUIRED by Assignment)

Your Dockerfile below includes Linux operations (mkdir, echo, ls, cat) + Flask setup:

# Step 1: Use official Python base image
FROM python:3.9-slim

# Step 2: Basic Linux command operations (Assignment Requirement)
RUN mkdir /myfolder
RUN echo "This is a basic Linux command inside Dockerfile" > /myfolder/info.txt
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

🧪 Flask Application (app.py)
from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return "🚀 Hello from Kartik's Dockerized CD App!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

📦 requirements.txt
flask

🛠️ 2. How I Completed the Assignment (Step-by-Step)
Step 1 — Create project folder
mkdir docker-cd-project
cd docker-cd-project

Step 2 — Create app.py, requirements.txt, Dockerfile
touch app.py requirements.txt Dockerfile

Step 3 — Build the Docker image
docker build -t kartik-cd-app .

Step 4 — Run the container
docker run -d -p 5000:5000 kartik-cd-app

Step 5 — Verify output

Open your browser:
👉 http://localhost:5000

You will see:
“🚀 Hello from Kartik's Dockerized CD App!”

🐳 Docker Commands Used
docker build -t kartik-cd-app .
docker images
docker run -d -p 5000:5000 kartik-cd-app
docker ps -a
docker login
docker tag kartik-cd-app kartiklingayat/kartik-cd-app:latest
docker push kartiklingayat/kartik-cd-app:latest

🔧 Git Commands Used
git init
git add .
git commit -m "Initial commit - Flask Docker CD project"
git branch -M main
git remote add origin https://github.com/kartiklingayat/docker-cd-project.git
git push -u origin main

🎓 3. How This Assignment Helped Me Learn DevOps
📌 DevOps

Learned how CI/CD, Git, Docker, and Linux come together to build automated pipelines.

📌 Linux

Practiced essential Linux commands such as:
mkdir, echo, ls, cat, pwd

📌 Git

Understood version control, branching, staging, committing, and pushing to GitHub.

📌 Docker

Learned how to:

write a Dockerfile

build an image

run containers

expose ports

push to Docker Hub

✅ Assignment Completed Successfully

This README contains everything required by the instructor:
✔️ Dockerfile with Linux commands
✔️ 5 DevOps concepts
✔️ Explanation of steps
✔️ Docker + Git commands
✔️ Learning outcome
✔️ Flask app + Dockerfile + links
✔️ Professional formatting
