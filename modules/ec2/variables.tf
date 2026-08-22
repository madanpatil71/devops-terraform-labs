variable "ami_id" {
  type        = string
  description = "The AMI ID to use for the EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "The instance type for the EC2 instance"
  default     = "t3.micro"
}

variable "instance_name" {
  type        = string
  description = "Name tag for the EC2 instance"
  default     = "ec2-instance"
}

variable "environment" {
  type        = string
  description = "Environment identifier (e.g. dev, staging, prod)"
  default     = "dev"
}

variable "subnet_id" {
  type        = string
  description = "VPC Subnet ID where the instance will be launched"
  default     = null
}

variable "vpc_security_group_ids" {
  type        = list(string)
  description = "List of security group IDs to assign to the instance"
  default     = []
}

variable "associate_public_ip_address" {
  type        = bool
  description = "Whether to associate a public IP address with the instance in a VPC"
  default     = null
}

variable "key_name" {
  type        = string
  description = "Key pair name to use for SSH access"
  default     = null
}

variable "user_data" {
  type        = string
  description = "User data script to run on instance bootstrap"
  default     = null
}

variable "iam_instance_profile" {
  type        = string
  description = "IAM Instance Profile to attach to the instance"
  default     = null
}

variable "root_volume_size" {
  type        = number
  description = "Size of the root EBS volume in GB"
  default     = 20
}

variable "root_volume_type" {
  type        = string
  description = "Type of root EBS volume (e.g. gp2, gp3, io1)"
  default     = "gp3"
}

variable "root_volume_encrypted" {
  type        = bool
  description = "Whether to enable EBS encryption on root volume"
  default     = true
}

variable "tags" {
  type        = map(string)
  description = "Additional tags to apply to all resources"
  default     = {}
}