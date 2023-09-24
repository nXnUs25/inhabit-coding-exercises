variable "vpc_id" {
  description = "The ID of the VPC where the private subnets will be created."
  type        = string
}

variable "private_subnet_cidrs" {
  description = "A list of CIDR blocks for the private subnets."
  type        = list(string)
}

variable "availability_zone" {
  description = "The availability zone for the private subnets (e.g., 'us-east-1a')."
  type        = string
}
