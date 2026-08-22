# Lab 02: Variables and Variable Precedence

This lab demonstrates how to define Terraform variables, use default values, and test Terraform's variable precedence order:

1. Environment variables (`TF_VAR_variable_name`)
2. `terraform.tfvars` file
3. `terraform.tfvars.json` file
4. `*.auto.tfvars` or `*.auto.tfvars.json` files
5. `-var` and `-var-file` command-line flags

## Usage

```bash
# Initialize Terraform
terraform init

# Plan using default values
terraform plan

# Plan with custom tfvars
terraform plan -var-file="terraform.tfvars.example"

# Plan with CLI variable override
terraform plan -var="instance_type=t3.small"
```
