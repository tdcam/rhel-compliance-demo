terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket = "rhel-compliance-tfstate"
    key    = "infrastructure/terraform.tfstate"
    region = "us-east-2"
  }
}

provider "aws" {
  region = var.aws_region
}
