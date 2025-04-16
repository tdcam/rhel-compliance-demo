variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.31.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.31.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "10.31.2.0/24"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.medium"
}

variable "stig_ami_id" {
  description = "AMI ID for STIG-hardened instances"
  type        = string
}

variable "standard_ami_id" {
  description = "AMI ID for standard RHEL instances (IdM, Keycloak)"
  type        = string
}

variable "key_name" {
  description = "SSH key name to use for EC2 instances"
  type        = string
}

