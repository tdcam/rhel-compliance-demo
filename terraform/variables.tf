variable "aws_region" {
  description = "AWS region"
  default     = "us-east-2"
}

variable "vpc_cidr" {
  default = "10.31.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.31.1.0/24"
}

variable "private_subnet_cidr" {
  default = "10.31.2.0/24"
}

variable "instance_count" {
  default = 4
}

variable "instance_type" {
  default = "t3.medium"
}

variable "stig_ami_id" {
  type        = string
  description = "AMI ID for STIG-hardened instances"
}

variable "standard_ami_id" {
  type        = string
  description = "AMI ID for standard RHEL instances (IdM, Keycloak)"
}

