# Assignment-5

# 🏗 Infrastructure Automation with Shell & Docker Compose

This project demonstrates **local infrastructure automation** using **Docker Compose** and **shell scripting**, simulating a real-world DevOps environment without using any cloud services.

A complete DevOps stack — **Jenkins, Redis, Nginx, and a sample application** — is provisioned and started using a single automation script.

---

## 🎯 Objective

- Automate setup of multiple services locally
- Use Docker Compose for service orchestration
- Use shell scripting for environment preparation
- Simulate DevOps infrastructure bootstrapping without cloud
- Include service health checks and logs

---

## 🛠 Tech Stack

- Docker
- Docker Compose
- Shell Scripting (Bash)
- Jenkins
- Redis
- Nginx
- Python (Flask)

---

Jenkins runs independently as a CI service within the same Docker Compose stack.

---

## 🐍 Sample Application

The sample Python Flask application:
- Exposes a basic HTTP endpoint
- Uses Redis to store a visit counter

Example response:

Hello from DevOps Automation 🚀 | Visits: 5

---

## 🐳 Docker Compose Services

| Service  | Description |
|--------|------------|
| Jenkins | CI server |
| Redis  | Key-value store |
| App    | Sample Flask application |
| Nginx  | Reverse proxy |

---

## ⚙️ Automation Script

### setup.sh

The `setup.sh` script:
- Verifies Docker and Docker Compose availability
- Pulls required container images
- Starts all services in detached mode
- Displays running services and access URLs

Run:
```bash
chmod +x setup.sh
./setup.sh

❤️ Health Checks

Health checks are configured for:

Jenkins

Redis

Docker Compose waits for healthy services before starting dependent services.

Verify:

docker compose ps


View logs for all services:

docker compose logs -f

View logs for a specific service:

docker compose logs jenkins
docker compose logs app
docker compose logs redis
docker compose logs nginx




