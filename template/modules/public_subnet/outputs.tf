output "public_subnet_ids" {
  description = "The IDs of the created public subnets."
  value       = aws_subnet.public[*].id
}

output "public_subnet_cidr_blocks" {
  description = "The CIDR blocks of the created public subnets."
  value       = aws_subnet.public[*].cidr_block
}
