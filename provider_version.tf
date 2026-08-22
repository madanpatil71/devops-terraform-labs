terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.49.0"
    }
  }
}



resource "aws_instance" "my_ec2" {
    ami = "ami-07a00cf47dbbc844c"
    instance_type = "t3.micro"

    tags = {
    Name = "test-spot"
  }  
}