output "private_subnet_ids" {
  description = "The IDs of the created public subnets."
  value       = aws_subnet.private[*].id
}

output "private_subnet_cidr_blocks" {
  description = "The CIDR blocks of the created public subnets."
  value       = aws_subnet.private[*].cidr_block
}
