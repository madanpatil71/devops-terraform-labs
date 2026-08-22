module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 5.0"

  name = "single-instance"

  instance_type          = "t3.micro"
  monitoring             = true
  vpc_security_group_ids = []
  subnet_id              = "subnet-0951e3e534518d829"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
