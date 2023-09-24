variable "instance_type" {
  description = "The EC2 instance type."
  default     = "t3.medium"
}


variable "ami" {
  description = "The EC2 ami"
  type = string 
  default = "ami-04e601abe3e1a910f"
}

variable "subnet_id" {
    description = "The ID of subnet"
    type = string
}

variable "vpc_id" {
  type = string
}

variable "public_subnet_cidr_blocks" {
  description = "CIDR blocks for public subnets."
  type        = list(string)
}