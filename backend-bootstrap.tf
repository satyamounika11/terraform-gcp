resource "google_storage_bucket" "terraform_state" {
  name     = "sandbox-tf-state-443817"
  location = var.region
  force_destroy = true   # Allows cleanup if bucket is empty later
}

