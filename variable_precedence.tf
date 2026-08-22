resource "aws_instance" "demo_ec2" {
    ami = "ami-0685bcc683dadb6b9"
    instance_type = "t3.micro"
}