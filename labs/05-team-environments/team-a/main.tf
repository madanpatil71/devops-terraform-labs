module "team_a_ec2" {
  source        = "../../../modules/ec2"
  instance_type = "t2.micro"
  ami_id        = "ami-0c55b159cbfafe1"
  instance_name = "Team-A-Instance"
  environment   = "team-a"
}
