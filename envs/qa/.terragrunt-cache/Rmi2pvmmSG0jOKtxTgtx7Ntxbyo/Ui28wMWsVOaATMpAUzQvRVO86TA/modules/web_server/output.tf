output "web_server_public_subnet_ids" {
  description = "The ID of the public subnet."
  value       = aws_instance.web_server[*].subnet_id
}

output "web_server_replica_count_number" {
  description = "The number of replicas for the instance."
  value       = length(aws_instance.web_server)
}

output "web_server_ami" {
  description = "The EC2 ami"
  value = aws_instance.web_server[*].ami
}

output "web_server_security_groups" {
  description = "The EC2 ami"
  value = aws_instance.web_server[*].security_groups
}