terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # In production, state isolation in dedicated S3 + DynamoDB locking is mandatory:
  # backend "s3" {
  #   bucket         = "mycompany-terraform-state-prod"
  #   key            = "prod/ec2/terraform.tfstate"
  #   region         = "ap-south-1"
  #   dynamodb_table = "terraform-locks-prod"
  #   encrypt        = true
  # }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment = "production"
      ManagedBy   = "Terraform"
      Project     = "DevOps-Labs"
      Compliance  = "Strict"
    }
  }
}
