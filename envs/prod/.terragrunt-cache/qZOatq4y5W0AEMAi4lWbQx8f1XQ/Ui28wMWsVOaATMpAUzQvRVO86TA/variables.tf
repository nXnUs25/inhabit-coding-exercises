variable "aws_region" {
  description = "AWS region on which i will create resources"
  default     = "eu-central-1"  
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_blocks" {
  description = "CIDR blocks for public subnets."
  type        = list(string)
  default     = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "private_subnet_cidr_blocks" {
  description = "CIDR blocks for private subnets."
  type        = list(string)
  default     = ["10.0.2.0/24", "10.0.3.0/24"] 
}

variable "availability_zone" {
  description = "AWS availability zone i will use"
  type = string
}

variable "web_server_replica_count" {
  description = "The number of replicas for the instance."
  default     = 1
}

variable "web_server_instance_type" {
  description = "The EC2 instance type."
  default     = "t3.small"
}

variable "mysql_instance_type" {
  description = "The EC2 instance type."
  default     = "t3.medium"
}