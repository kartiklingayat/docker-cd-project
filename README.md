# 📌 Docker CD Python App – DevOps FAT2 Assignment

This project contains a simple Flask application packaged inside a Docker container.
The container also demonstrates **basic Linux commands** (as required in the assignment).
The final Docker image is pushed to Docker Hub for public access.

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

Here is the exact Flask code used in the project (as requested):

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

## 1️⃣ **Continuous Integration (CI)**

CI ensures that every code change is tested and verified before merging into the main branch.

## 2️⃣ **Continuous Delivery (CD)**

CD automates the release process so that applications can be deployed at any time.

## 3️⃣ **Containerization**

Docker containers package applications with their dependencies for consistent environments everywhere.

## 4️⃣ **Version Control (Git)**

Git helps track changes, manage branches, collaborate, and roll back if necessary.

## 5️⃣ **Infrastructure as Code (IaC)**

Tools like Terraform or CloudFormation define infrastructure in files instead of manual setup.

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

### **3️⃣ Open Browser**

```
http://localhost:5000
```

---

# 📤 **Push Image to Docker Hub**

### **Login**

```
docker login
```

### **Tag Image**

```
docker tag kartik-cd-app kartiklingayat/kartik-cd-app
```

### **Push Image**

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

### Commit Message

```
git commit -m "Initial commit - Docker CD Python App"
```

### Add GitHub Remote

```
git remote add origin https://github.com/<your-username>/<your-repo>.git
```

### Push to GitHub

```
git push -u origin main
```

---

# 🎯 **Assignment Summary (In Words)**

To complete this assignment, I created a project folder containing a Flask application and a Dockerfile.
Inside the Dockerfile, I added **basic Linux command operations** such as creating a folder, listing files, and displaying text.

Then I built the Docker image using `docker build`, tested it locally using `docker run`, and pushed it to Docker Hub using `docker push`.

Finally, I documented all steps, concepts, and commands in this README.md file, and uploaded everything to a GitHub repository.

---

# ✅ **Assignment Completed Successfully**
