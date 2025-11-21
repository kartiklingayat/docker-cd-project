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

# 📘 **DevOps Concepts **

1️⃣ Continuous Integration (CI)

Continuous Integration is a core DevOps practice where developers frequently merge their code changes into a shared repository. Every time new code is pushed, automated processes such as builds, tests, linting, and verification run automatically. CI helps detect errors early in the development cycle by ensuring that new changes do not break existing functionality.
By integrating changes frequently, teams avoid long merge conflicts, improve code quality, and speed up development. CI acts as the first stage of automation in the DevOps pipeline and ensures that the application is always in a stable, testable state. Tools used in real-world CI systems include Jenkins, GitHub Actions, GitLab CI, CircleCI, and Travis CI.

2️⃣ Continuous Delivery (CD)

Continuous Delivery extends CI by ensuring that the application is always ready to be deployed to a production-like environment. After CI validates the code, CD automates additional steps such as packaging, creating artifacts, pushing container images, deploying to test environments, and running integration tests.
CD ensures that every version of the software is deployment-ready at any time, reducing manual errors and enabling faster release cycles. In this assignment, pushing the Docker image to Docker Hub is a real example of a CD step.
Organizations implement CD to reduce risk, increase deployment frequency, and ensure reliable releases with minimal downtime.

3️⃣ Containerization (Docker)

Containerization is the process of packaging an application and all its dependencies (libraries, runtime, configurations) into a single isolated unit called a container. Docker makes this possible by providing lightweight, portable images that can run on any machine, ensuring consistent behavior across environments—development, testing, and production.
Containers start quickly, use fewer resources than virtual machines, and are ideal for microservices architectures. In this assignment, the Flask application is packaged inside a Docker container using a Dockerfile, making it easy to build, run, and share using Docker Hub.

4️⃣ Version Control with Git

Git is a distributed version control system that helps track changes in source code over time. It allows developers to collaborate, work on multiple features using branches, maintain a clean commit history, and roll back changes if something goes wrong.
Using Git ensures that all modifications are recorded, and it provides a secure way to push projects to platforms like GitHub.
In this assignment, Git is used to:

Initialize a repository

Add project files

Commit changes

Push code to a GitHub repository
Git guarantees traceability, collaboration, and easy project management.

5️⃣ Infrastructure as Code (IaC)

Infrastructure as Code is a modern DevOps approach where servers, networks, databases, and other infrastructure components are defined through code instead of manual configuration.
IaC tools such as Terraform, AWS CloudFormation, and Ansible enable engineers to create consistent, repeatable, and scalable environments automatically.
Infrastructure can be version-controlled, reviewed, replicated, and managed like application code.
Although not directly used in this assignment, IaC is a major pillar of DevOps because it improves automation, eliminates configuration drift, and accelerates cloud deployment workflows.

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


