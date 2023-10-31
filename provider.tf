# Terraform Block
terraform {
  required_version = "~> 0.14"
  required_providers {
    aws = { 
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket = "s3-terraform-statefile-as5.2.2.1"
    key = "terraform.tfstate"
    region = "ap-south-1"
  }
}

# Provider Block
provider "aws" {
  region = "ap-south-1"
}

