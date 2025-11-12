🚀 Dockerized Continuous Deployment App
📘 Project Overview

This project demonstrates a simple Flask web application containerized using Docker as part of a Continuous Deployment (CD) workflow.

🧩 Features

Lightweight Python Flask application

Fully Dockerized for platform-independent deployment

Ready for DockerHub and GitHub CI/CD integration

⚙️ Setup & Run Locally
1️⃣ Clone Repository
git clone https://github.com/<your-username>/docker-cd-project.git
cd docker-cd-project

2️⃣ Build Docker Image
docker build -t kartik-cd-app .

3️⃣ Run the Container
docker run -d -p 5000:5000 kartik-cd-app


Visit http://localhost:5000
 to view the app.

🐋 DockerHub Image

The prebuilt Docker image can be pulled directly:

docker pull <your-dockerhub-username>/kartik-cd-app:v1

📦 GitHub Repository

View full source code:
👉 https://github.com/<your-username>/docker-cd-project

👨‍💻 Author

Kartik Lingayat
Cloud & DevOps Enthusiast 🌩️
📧 kartik@example.com

🔗 LinkedIn Profile

Save and exit (CTRL + O → ENTER → CTRL + X)

⚙️ 5️⃣ Build Docker Image

Run:

docker build -t kartik-cd-app .


✅ If successful, you’ll see:

Successfully built <image_id>
Successfully tagged kartik-cd-app:latest

🧪 6️⃣ Test Docker Image

Run:

docker run -d -p 5000:5000 kartik-cd-app


Then open your browser → http://localhost:5000

You should see:

🚀 Hello from Kartik's Dockerized CD App!

🧭 7️⃣ Push Code to GitHub
Initialize Git Repo
git init
git add .
git commit -m "Initial commit - Docker CD project"

Create a New Repo on GitHub

Go to https://github.com/new

Repository name: docker-cd-project

Keep it public

Don’t add README (you already have it)

Add Remote & Push
git branch -M main
git remote add origin https://github.com/<your-username>/docker-cd-project.git
git push -u origin main


✅ GitHub URL:
https://github.com/<your-username>/docker-cd-project

🐋 8️⃣ Push Image to DockerHub
Login to DockerHub
docker login


Enter your DockerHub username and password.

Tag Image
docker tag kartik-cd-app <your-dockerhub-username>/kartik-cd-app:v1

Push to DockerHub
docker push <your-dockerhub-username>/kartik-cd-app:v1


✅ DockerHub URL:
https://hub.docker.com/r/<your-dockerhub-username>/kartik-cd-app

✅ 9️⃣ Final Step — Fill Google Form
Field	Paste This
GitHub Repository URL	https://github.com/<your-username>/docker-cd-project
DockerHub Image URL	https://hub.docker.com/r/<your-dockerhub-username>/kartik-cd-app
💡 Optional: Check Image Online

You can verify your pushed image here:
👉 https://hub.docker.com/repositories
