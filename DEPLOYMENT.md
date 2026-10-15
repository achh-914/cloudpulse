# CloudPulse Deployment & Infrastructure Guide

This guide outlines the deployment procedures for the **CloudPulse** observability microservice, covering local orchestration, CI/CD execution, and Infrastructure as Code (Terraform) provisioning.

---

## 1. Prerequisites
Ensure your local or remote environment has the following tools installed:
* Docker & Docker Compose
* Python 3.11+
* Terraform (v1.5+)
* Git

---

## 2. Local Deployment via Docker Compose
To run the complete application stack alongside Prometheus monitoring locally:

1. Clone the repository:
   ```bash
   git clone [https://github.com/achh-914/cloudpulse.git](https://github.com/achh-914/cloudpulse.git)
   cd cloudpulse
