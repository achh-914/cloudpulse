terraform {
  required_version = ">= 1.5.0"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
  }
}

provider "local" {}

# Generating dynamic environment configuration manifest
resource "local_file" "k8s_manifest" {
  filename = "${path.module}/deployment-${var.environment}.yaml"
  content  = <<EOF
apiVersion: apps/v1
kind: Deployment
metadata:
  name: ${var.app_name}-${var.environment}
  labels:
    app: ${var.app_name}
    env: ${var.environment}
spec:
  replicas: ${var.environment == "prod" ? 3 : 1}
  selector:
    matchLabels:
      app: ${var.app_name}
  template:
    metadata:
      labels:
        app: ${var.app_name}
    spec:
      containers:
      - name: ${var.app_name}
        image: cloudpulse:latest
        ports:
        - containerPort: 8000
EOF
}
