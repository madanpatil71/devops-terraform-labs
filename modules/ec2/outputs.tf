output "instance_id" {
  description = "The ID of the created EC2 instance"
  value       = aws_instance.this.id
}

output "arn" {
  description = "The ARN of the created EC2 instance"
  value       = aws_instance.this.arn
}

output "public_ip" {
  description = "The public IP address assigned to the instance"
  value       = aws_instance.this.public_ip
}

output "private_ip" {
  description = "The private IP address assigned to the instance"
  value       = aws_instance.this.private_ip
}

output "public_dns" {
  description = "The public DNS name assigned to the instance"
  value       = aws_instance.this.public_dns
}

output "primary_network_interface_id" {
  description = "The ID of the instance primary network interface"
  value       = aws_instance.this.primary_network_interface_id
}
