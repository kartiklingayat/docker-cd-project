🚀 Dockerized Continuous Deployment App
📘 Project Overview

This project demonstrates a simple Flask web application containerized using Docker as part of a Continuous Deployment (CD) workflow.

It showcases how to:

Build and run a lightweight Python Flask app

Containerize it using Docker

Push it to Docker Hub for easy deployment and sharing

Maintain version control on GitHub for CI/CD integration

🧩 Features

✅ Lightweight Python Flask web application
✅ Fully Dockerized for platform-independent deployment
✅ Ready for GitHub & Docker Hub CI/CD integration
✅ Beginner-friendly — ideal for DevOps practice

⚙️ Setup & Run Locally
1️⃣ Clone Repository
git clone https://github.com/kartiklingayat/docker-cd-project.git
cd docker-cd-project

2️⃣ Build Docker Image
docker build -t kartik-cd-app .

3️⃣ Run the Container
docker run -d -p 5000:5000 kartik-cd-app


Now open your browser and visit:
👉 http://localhost:5000

You should see:

🚀 Hello from Kartik’s Dockerized CD App!

🐋 DockerHub Image

The prebuilt image is available on Docker Hub.
You can pull it directly using:

docker pull kartiklingayat/kartik-cd-app:latest


🔗 Docker Hub Repository:
👉 https://hub.docker.com/r/kartiklingayat/kartik-cd-app

📦 GitHub Repository

Full source code and Docker configuration are available here:
👉 https://github.com/kartiklingayat/docker-cd-project

🧠 Step-by-Step Guide (For CI/CD or Exam Use)
🧭 1. Initialize Git Repository
git init
git add .
git commit -m "Initial commit - Docker CD project"

🧭 2. Push Code to GitHub
git branch -M main
git remote add origin https://github.com/kartiklingayat/docker-cd-project.git
git push -u origin main


✅ GitHub Repo: https://github.com/kartiklingayat/docker-cd-project

🧭 3. Push Docker Image to Docker Hub

Login to Docker Hub:

docker login


Tag your image:

docker tag kartik-cd-app kartiklingayat/kartik-cd-app:latest


Push image:

docker push kartiklingayat/kartik-cd-app:latest


✅ Docker Hub Repo: https://hub.docker.com/r/kartiklingayat/kartik-cd-app

📋 Google Form Submission Details
Field	Value
GitHub Repository URL	https://github.com/kartiklingayat/docker-cd-project

Docker Hub Image URL	https://hub.docker.com/r/kartiklingayat/kartik-cd-app
💡 Verification

You can view your image live at:
👉 https://hub.docker.com/r/kartiklingayat/kartik-cd-app

⚙️ Technologies Used

Python 3

Flask

Docker

GitHub

Docker Hub

✅ Sample Output
🚀 Hello from Kartik's Dockerized CD App!
