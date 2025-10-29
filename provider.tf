terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }

  required_version = ">= 1.5.0"
  backend "gcs" {
    bucket = "sandbox-tf-state-443817"
    prefix = "terraform/state"   # folder-like path within the bucket
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

