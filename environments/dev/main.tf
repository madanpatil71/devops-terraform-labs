module "dev_app_server" {
  source = "../../modules/ec2"

  ami_id        = var.ami_id
  instance_type = var.instance_type
  instance_name = "dev-app-server"
  environment   = var.environment

  # Dev Considerations: Cost-optimized storage & basic monitoring
  root_volume_size        = 20
  root_volume_type        = "gp3"
  root_volume_encrypted   = true
  monitoring              = false # Basic 5-minute CloudWatch (cost-free)
  disable_api_termination = false # Easy cleanup for dev teardowns

  tags = {
    CostCenter   = "Engineering-Dev"
    AutoShutdown = "True"
  }
}
