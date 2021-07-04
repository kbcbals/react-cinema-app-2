provider "aws" {
  region = "eu-west-2"
}
#added a comment
terraform {
  backend "s3" {
    bucket  = "remote-app-cinema-tf-state"
    key     = "remote-app-cinema.tfstate"
    region  = "eu-west-2"
    encrypt = true
  }
}


locals {
  prefix = "${var.prefix}-${terraform.workspace}"
  common_tags = {
    Environment = terraform.workspace
    Project     = var.project
    ManageBy    = "Terraform"
    Owner       = "Balamurugan Balasubramanian"
  }
}
