output "prod_instance_id" {
  description = "The ID of the production EC2 instance"
  value       = module.prod_app_server.instance_id
}

output "prod_public_ip" {
  description = "The public IP of the production EC2 instance"
  value       = module.prod_app_server.public_ip
}

output "prod_instance_arn" {
  description = "The ARN of the production EC2 instance"
  value       = module.prod_app_server.arn
}
