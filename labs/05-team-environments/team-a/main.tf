module "team_a_ec2" {
  source        = "../../../modules/ec2"
  instance_type = "t2.micro"
  ami           = "ami-0c55b159cbfafe1"
  instance_name = "Team-A-Instance"
}
