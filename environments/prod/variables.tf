variable "aws_region" {
  type        = string
  description = "AWS region for production deployment"
  default     = "ap-south-1"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for the production instance"
  default     = "ami-0685bcc683dadb6b9"
}

variable "instance_type" {
  type        = string
  description = "Production instance size with sufficient vCPU and RAM"
  default     = "t3.large"
}

variable "environment" {
  type        = string
  description = "Environment name"
  default     = "prod"
}
