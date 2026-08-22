output "team_a_instance_id" {
  description = "Team A EC2 instance ID"
  value       = module.team_a_ec2.instance_id
}

output "team_a_public_ip" {
  description = "Team A EC2 public IP"
  value       = module.team_a_ec2.public_ip
}
