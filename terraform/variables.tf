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

variable "ami_id" {
  description = "AMI ID to launch RHEL STIG-hardened EC2 instances"
}

