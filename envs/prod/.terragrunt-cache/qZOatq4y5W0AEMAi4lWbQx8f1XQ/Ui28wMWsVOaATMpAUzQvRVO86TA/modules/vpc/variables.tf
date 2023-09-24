variable "aws_region" {
  description = "The AWS region where the VPC will be created."
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "enable_dns_support" {
  description = "Whether to enable DNS support for the VPC (true/false)."
  type        = bool
  default     = true
}

variable "enable_dns_hostnames" {
  description = "Whether to enable DNS hostnames for the VPC (true/false)."
  type        = bool
  default     = true
}
