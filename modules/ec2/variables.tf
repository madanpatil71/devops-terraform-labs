variable "ami" {
  type        = string
  description = "The AMI ID for the EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "The EC2 instance type"
  default     = "t2.micro"
}

variable "instance_name" {
  type        = string
  description = "Value of the Name tag for the EC2 instance"
  default     = "EC2-Module-Instance"
}