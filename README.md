# CloudPulse: Cloud Observability Microservice & CI/CD Pipeline

![CI/CD Pipeline](https://github.com/achh-914/cloudpulse/actions/workflows/ci.yml/badge.svg)
![Docker](https://img.shields.io/badge/Docker-Ready-blue?logo=docker)
![FastAPI](https://img.shields.io/badge/FastAPI-High%20Performance-005571?logo=fastapi)
![Prometheus](https://img.shields.io/badge/Prometheus-Monitoring-e6522c?logo=prometheus)

## Overview
CloudPulse is a cloud observability microservice built with FastAPI, containerized via Docker, orchestrated using Docker Compose, and monitored through Prometheus. 

This project demonstrates core DevOps and Cloud engineering methodologies, featuring a multi-stage GitHub Actions CI/CD pipeline with automated code quality checks (Linting), test coverage validation, security scanning, and Git Commit SHA image tagging.

---

## Architecture & Workflow
1. Code Quality & Linting: Automated syntax and style validation using Flake8.
2. Continuous Integration (CI): Automated testing and coverage reporting using Pytest.
3. Security Vulnerability Scan: Dependency and codebase safety checks.
4. Containerization & Versioning: Production-ready Docker builds tagged dynamically with Git Commit SHAs.
5. Monitoring & Observability: Exposing native API metrics using prometheus-fastapi-instrumentator and scraping them via Prometheus.

---

## Tech Stack
* Language & Framework: Python 3.11, FastAPI
* Testing & Quality: Pytest, pytest-cov, Flake8
* CI/CD & Automation: GitHub Actions (with Fail-Fast Gates)
* Containerization: Docker & Docker Compose
* Observability: Prometheus

---

## Scope & Limitations
While this repository implements robust CI/CD, security gates, and monitoring workflows, it operates as a portfolio/demonstration project. True production readiness would further require:
* Cloud-native orchestrators (e.g., Kubernetes / GKE) with managed ingress and auto-scaling.
* Remote state management and locking for Infrastructure as Code (Terraform).
* Advanced secrets management and centralized log aggregation.

---

## Quickstart Guide (Local Deployment)

Clone the repository and spin up the stack locally:

```bash
git clone [https://github.com/achh-914/cloudpulse.git](https://github.com/achh-914/cloudpulse.git)
cd cloudpulse

# Run the app and monitoring stack locally
docker-compose up --build
