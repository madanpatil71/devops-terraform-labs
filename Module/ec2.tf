provider "aws" {
  region = "ap-south-1"
}

module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "6.4.0"
  subnet_id = "subnet-0951e3e534518d829"
}