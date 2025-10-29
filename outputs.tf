output "vm_external_ips" {
  description = "External IP addresses of the created VM instances (if any)"
  value       = google_compute_instance.micro_vm[*].network_interface[0].access_config[0].nat_ip
}

