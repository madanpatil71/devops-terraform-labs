output "dev_instance_id" {
  description = "The ID of the dev EC2 instance"
  value       = module.dev_app_server.instance_id
}

output "dev_public_ip" {
  description = "The public IP of the dev EC2 instance"
  value       = module.dev_app_server.public_ip
}
