ioutput "vm_public_ip" {
  description = "Public IP address of the created EC2 instance (if any)"
  value       = try(aws_instance.micro_vm[0].public_ip, null)
}

