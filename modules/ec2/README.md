# AWS EC2 Instance Module

Reusable Terraform module to provision and manage AWS EC2 instances with encrypted root EBS volumes, customizable networking, bootstrap user data, and tagging standards.

## Usage

```hcl
module "web_instance" {
  source = "../../modules/ec2"

  instance_name = "web-production"
  ami_id        = "ami-0685bcc683dadb6b9"
  instance_type = "t3.micro"
  environment   = "production"

  root_volume_size      = 30
  root_volume_encrypted = true

  tags = {
    Owner = "DevOps Team"
    App   = "Frontend"
  }
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| `ami_id` | AMI ID for the EC2 instance | `string` | n/a | **yes** |
| `instance_type` | EC2 instance size | `string` | `"t3.micro"` | no |
| `instance_name` | Name tag for the EC2 instance | `string` | `"ec2-instance"` | no |
| `environment` | Deployment environment tag | `string` | `"dev"` | no |
| `subnet_id` | VPC Subnet ID | `string` | `null` | no |
| `vpc_security_group_ids` | List of Security Group IDs | `list(string)` | `[]` | no |
| `associate_public_ip_address` | Associate public IP | `bool` | `null` | no |
| `key_name` | Key Pair name for SSH | `string` | `null` | no |
| `user_data` | Bootstrap shell script | `string` | `null` | no |
| `iam_instance_profile` | IAM Instance Profile name | `string` | `null` | no |
| `root_volume_size` | Root EBS volume size in GB | `number` | `20` | no |
| `root_volume_type` | Root EBS volume type (`gp3`, `gp2`) | `string` | `"gp3"` | no |
| `root_volume_encrypted` | Enable EBS encryption | `bool` | `true` | no |
| `tags` | Additional resource tags | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| `instance_id` | The ID of the EC2 instance |
| `arn` | The ARN of the EC2 instance |
| `public_ip` | The public IP address |
| `private_ip` | The private IP address |
| `public_dns` | The public DNS name |
| `primary_network_interface_id` | Primary network interface ID |
