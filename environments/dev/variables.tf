variable "aws_region" {
  type        = string
  description = "AWS region for dev deployment"
  default     = "ap-south-1"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for the dev instance"
  default     = "ami-0685bcc683dadb6b9"
}

variable "instance_type" {
  type        = string
  description = "Cost-effective instance type for dev"
  default     = "t3.micro"
}

variable "environment" {
  type        = string
  description = "Environment name"
  default     = "dev"
}
