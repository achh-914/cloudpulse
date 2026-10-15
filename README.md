
k

# CloudPulse: Production-Ready Observability & CI/CD Pipeline

![CI/CD Pipeline](https://github.com/achh-914/cloudpulse/actions/workflows/ci.yml/badge.svg)
![Docker](https://img.shields.io/badge/Docker-Ready-blue?logo=docker)
![FastAPI](https://img.shields.io/badge/FastAPI-High%20Performance-005571?logo=fastapi)
![Prometheus](https://img.shields.io/badge/Prometheus-Monitoring-e6522c?logo=prometheus)

## Overview
CloudPulse is an enterprise-grade cloud observability microservice built with FastAPI, containerized via Docker, orchestrated using Docker Compose, and monitored through Prometheus. 

This project demonstrates professional DevOps methodologies, featuring a robust multi-stage GitHub Actions CI/CD pipeline, automated security scanning, and Git Commit SHA image tagging.

---

## Architecture & Workflow
1. Continuous Integration (CI): Automated code validation and testing using pytest.
2. Security Vulnerability Scan: Automated codebase and dependency safety checks.
3. Containerization & Versioning: Building production-ready Docker images tagged dynamically with Git Commit SHAs.
4. Monitoring & Observability: Exposing native API metrics using prometheus-fastapi-instrumentator and scraping them via Prometheus.

---

## Tech Stack
* Language & Framework: Python 3.11, FastAPI
* Testing: Pytest, TestClient
* CI/CD & Automation: GitHub Actions
* Containerization: Docker & Docker Compose
* Observability: Prometheus

---

## Quickstart Guide (Local Deployment)

Clone the repository and spin up the complete stack with a single command:

```bash
git clone [https://github.com/achh-914/cloudpulse.git](https://github.com/achh-914/cloudpulse.git)
cd cloudpulse

# Run the app and monitoring stack locally
docker-compose up --build# cloudpulse
