terraform {
  backend "s3" {
    bucket         = "tcameron-tf-state-bucket"
    key            = "rhel-compliance-demo/terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
  }
}

