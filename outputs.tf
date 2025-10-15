# Output the external IP if the VM is created
output "vm_external_ip" {
  description = "External IP address of the created VM (if any)"
  value       = google_compute_instance.micro_vm[0].network_interface[0].access_config[0].nat_ip
  condition   = var.enable_ec2_instance
}

