# AWS region
variable "region" {
  description = "Region to deploy resources"
  type        = string
  default     = "ap-south-1"
}

# Control flag to enable/disable EC2 instance creation
variable "enable_ec2_instance" {
  description = "Set to true to create the t2.micro instance"
  type        = bool
  default     = true
}

# Optional: Key pair for SSH access
variable "key_name" {
  description = "AWS Key Pair name for SSH access"
  type        = string
  default     = ""
}

