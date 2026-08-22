# Lab 03: Cross-Referencing Resource Attributes

This lab demonstrates how Terraform creates an implicit dependency graph by referencing exported attributes of one resource (`aws_eip.lb.public_ip` and `aws_security_group.example.id`) inside another resource (`aws_vpc_security_group_ingress_rule.example`).

## Usage

```bash
# Initialize Terraform
terraform init

# Validate syntax
terraform validate

# Review execution plan
terraform plan
```
