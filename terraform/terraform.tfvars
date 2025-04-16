vpc_cidr             = "10.0.0.0/16"
public_subnet_cidr   = "10.0.1.0/24"
private_subnet_cidr  = "10.0.2.0/24"

stig_ami_id          = "ami-0dee8d0e6a88728d8"
standard_ami_id      = "ami-0672bca11b972c7d0"
instance_type        = "t3.medium"

# Only applies to STIG EC2s since IdM/Keycloak are individual resources
instance_count       = 2

