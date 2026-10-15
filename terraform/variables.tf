variable "environment" {
  description = "Deployment environment (dev/prod)"
  type        = string
  default     = "dev"
}

variable "app_name" {
  description = "Application name"
  type        = string
  default     = "cloudpulse"
}

variable "region" {
  description = "Deployment region"
  type        = string
  default     = "us-central1"
}
