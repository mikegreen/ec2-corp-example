terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.3.0"
    }
  }
}


provider "aws" {
  region = "us-east-2"
}

module "ec2-corporate" {
  source  = "app.terraform.io/greenacreslimited/ec2-corporate/aws"
  version = "0.1.0"
  # insert required variables here
  subnet_id = false
  tags      = { "owner_tag" = "mike.green" }
}
