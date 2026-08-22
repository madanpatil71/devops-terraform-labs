
module "ec2" {
  source        = "../../modules/ec2"
  instance_type = "t2.micro"
  ami           = "ami-0c55b159cbfafe1"
  region        = "ap-south-1"
}



