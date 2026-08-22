resource "aws_instance" "demo_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name        = "Demo-EC2-${var.environment}"
    Environment = var.environment
  }
}
