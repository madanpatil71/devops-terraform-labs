module "prod_app_server" {
  source = "../../modules/ec2"

  ami_id        = var.ami_id
  instance_type = var.instance_type
  instance_name = "prod-app-server"
  environment   = var.environment

  # Production Considerations: High durability storage, detailed metrics, termination protection
  root_volume_size        = 100
  root_volume_type        = "gp3"
  root_volume_encrypted   = true
  monitoring              = true # Detailed 1-minute CloudWatch monitoring
  disable_api_termination = true # Prevents accidental terraform destroy / console deletion

  tags = {
    CostCenter = "Core-Production"
    SLA        = "99.99"
    Backup     = "Daily-Snapshot"
    Compliance = "PCI-DSS"
  }
}
