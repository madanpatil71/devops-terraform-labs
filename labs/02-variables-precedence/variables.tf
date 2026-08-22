variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "ap-south-1"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for EC2 instance"
  default     = "ami-0685bcc683dadb6b9"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "environment" {
  type        = string
  description = "Deployment environment name"
  default     = "dev"
}
