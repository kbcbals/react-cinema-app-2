provider "aws" {
  region = "eu-west-2"
}
#added a comment
terraform {
  backend "s3" {
    bucket  = "app-cinema-tfm-state"
    key     = "app-cinema.tfmstate"
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
