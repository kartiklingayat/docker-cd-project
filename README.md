# 📌 Docker CD Python App – DevOps FAT2 Assignment

This project contains a simple Flask application packaged inside a Docker container.
The container also demonstrates **basic Linux commands** (as required in the assignment).
The final Docker image has been built, tested, and pushed to Docker Hub for public access.

---

## 🚀 **Project Output**

Webpage Output:

```
Hello from Kartik's Dockerized CD App!
```

Docker Hub Image Link:
👉 **[https://hub.docker.com/r/kartiklingayat/kartik-cd-app](https://hub.docker.com/r/kartiklingayat/kartik-cd-app)**

---

# 📁 **Project Files**

```
docker-cd-python/
│── Dockerfile
│── app.py
│── requirements.txt
│── README.md
```

---

# 🐍 **Flask Application Code**

```
from flask import Flask
app = Flask(__name__)

@app.route("/")
def home():
    return "Hello from Kartik's Dockerized CD App!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
```

---

# 🐳 **Dockerfile Used**

```
FROM python:3.9-slim

# Basic Linux command operations
RUN mkdir /myfolder
RUN echo "Hello from Kartik's Dockerized CD App" > /myfolder/info.txt
RUN ls -l /myfolder
RUN cat /myfolder/info.txt
RUN pwd

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Expose port
EXPOSE 5000

# Start Flask server
CMD ["python", "app.py"]
```

---

# 📘 **DevOps Concepts (Any 5)**

## 1️⃣ Continuous Integration (CI)

Ensures every code change is automatically tested and validated.

## 2️⃣ Continuous Delivery (CD)

Automates deployment so applications can be released anytime.

## 3️⃣ Containerization

Packages the application and dependencies inside a Docker container.

## 4️⃣ Version Control (Git)

Helps track changes, maintain history, and collaborate efficiently.

## 5️⃣ Infrastructure as Code (IaC)

Defines infrastructure using files instead of manual steps.

---

# 🛠 **How to Build & Run Docker Container**

### **1️⃣ Build Docker Image**

```
docker build -t kartik-cd-app .
```

### **2️⃣ Run Container Locally**

```
docker run -p 5000:5000 kartik-cd-app
```

### **3️⃣ Open in Browser**

```
http://localhost:5000
```

---

# 📤 **Push Image to Docker Hub**

### Login:

```
docker login
```

### Tag Image:

```
docker tag kartik-cd-app kartiklingayat/kartik-cd-app
```

### Push Image:

```
docker push kartiklingayat/kartik-cd-app
```

---

# 🌀 **Git Commands Used**

### Initialize Repo

```
git init
```

### Add All Files

```
git add .
```

### Commit

```
git commit -m "Initial commit - Docker CD Python App"
```

### Add Remote Repo

```
git remote add origin https://github.com/<your-username>/<your-repo>.git
```

### Push Code

```
git push -u origin main
```

---

# 🎯 **Assignment Summary (In Words)**

To complete this assignment, I created a Flask application and wrote a Dockerfile that includes **basic Linux operations** like creating folders, writing text files, listing files, and printing output.

Then, I installed dependencies, built the Docker image, ran it locally, and pushed the image to Docker Hub.
I also used Git to track all changes and uploaded the project to GitHub.

Finally, I documented every step, command, and DevOps concept in this README.md file.

---

# 🎓 **How This Assignment Helped Me Learn DevOps, Linux, Git & Docker**

### 🔹 Linux

Running Linux commands inside the Dockerfile improved my understanding of filesystem operations and container build steps.

### 🔹 Git

Using Git for commits, versioning, and pushing to GitHub strengthened my version-control skills.

### 🔹 Docker

Building, running, tagging, and pushing Docker images gave me practical containerization experience.

### 🔹 DevOps

This assignment combined multiple DevOps skills—automation, versioning, packaging, and deployment—similar to real-world CI/CD workflows.

This hands-on practice improved my confidence in working with modern DevOps tools and pipelines.


