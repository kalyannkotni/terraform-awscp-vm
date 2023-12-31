# Terraform Block
terraform {
  required_version = "~> 0.14"
  required_providers {
    aws = { 
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {}
}

# Provider Block
provider "aws" {
  region = "ap-south-1"
  profile = "default"
}

resource "random_pet" "this" {
  length = 2
}
