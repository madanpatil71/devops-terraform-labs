# Development Environment (`dev`)

This directory provisions the Development environment using the shared `modules/ec2` module.

## Dev Environment Characteristics:
- **Cost-Optimized Compute:** `t3.micro` instance size.
- **Minimal Storage:** 20 GB gp3 volume.
- **Monitoring:** Standard CloudWatch monitoring (`monitoring = false`) to avoid extra costs.
- **Lifecycle:** API Termination Protection disabled (`disable_api_termination = false`) for rapid creation/teardown.
- **Tagging:** AutoShutdown enabled.

## Commands

```bash
cd environments/dev
terraform init
terraform plan
terraform apply
```
