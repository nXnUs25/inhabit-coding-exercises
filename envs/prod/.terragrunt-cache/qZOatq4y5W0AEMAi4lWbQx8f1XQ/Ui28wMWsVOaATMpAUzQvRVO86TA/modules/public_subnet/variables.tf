variable "vpc_id" {
  description = "The ID of the VPC where the public subnets will be created."
  type        = string
}

variable "public_subnet_cidrs" {
  description = "A list of CIDR blocks for the public subnets."
  type        = list(string)
}

variable "availability_zone" {
  description = "The availability zone for the public subnets (e.g., 'us-east-1a')."
  type        = string
}
