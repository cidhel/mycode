/* outputs.tf
   outputs to display */

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}

output "public_dns" {
  description = "Public IP address of the dns"
  value       = aws_instance.app_server.public_dns
}

output "instance_state" {
  description = "state of instance"
  value       = aws_instance.app_server.instance_state
}


output "threads_per_core" {
  description = "cpu threads per core of instance"
  value       = aws_instance.app_server.cpu_threads_per_core
}
