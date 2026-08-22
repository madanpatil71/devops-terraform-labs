resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
  region        = var.region
}

variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "region" {
  type = string
}


