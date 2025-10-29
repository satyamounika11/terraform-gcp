# Create a VPC network
resource "google_compute_network" "vpc_network" {
  name                    = "sample-vpc"
  auto_create_subnetworks = true
}

# Firewall rule for SSH (optional)
resource "google_compute_firewall" "allow_ssh" {
  name    = "allow-ssh"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}

# Create 3 instances when enabled, else 0
resource "google_compute_instance" "micro_vm" {
  count        = var.enable_ec2_instance ? var.instance_count : 0
  name         = "micro-vm-${count.index}"
  machine_type = "e2-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size  = 10
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {}
  }

  metadata = {
    enable-oslogin = "TRUE"
  }

  tags = ["ssh"]
}
