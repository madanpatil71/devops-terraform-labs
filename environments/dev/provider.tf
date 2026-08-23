terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # In production teams, define remote state backend per environment:
  # backend "s3" {
  #   bucket         = "mycompany-terraform-state-dev"
  #   key            = "dev/ec2/terraform.tfstate"
  #   region         = "ap-south-1"
  #   dynamodb_table = "terraform-locks-dev"
  # }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment = "dev"
      ManagedBy   = "Terraform"
      Project     = "DevOps-Labs"
    }
  }
}
