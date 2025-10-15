# Project and location
variable "sandbox-443817" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "Region to deploy resources"
  type        = string
  default     = "asia-south1"
}

variable "zone" {
  description = "Zone inside the region"
  type        = string
  default     = "asia-south1-a"
}

# Control flag to enable/disable VM creation
variable "enable_ec2_instance" {
  description = "Set to true to create the e2-micro instance"
  type        = bool
  default     = true
}

