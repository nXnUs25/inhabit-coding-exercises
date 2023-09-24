variable "instance_type" {
  description = "The EC2 instance type."
  default     = "t3.small"
}

variable "replica_count" {
  description = "The number of replicas for the instance."
  default     = 1
}

variable "allowed_ports" {
  description = "The list of allowed ingress ports."
  type        = list(number)
  default     = [80, 443]
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