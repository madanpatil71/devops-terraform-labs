# Production Environment (`prod`)

This directory provisions the Production environment using the shared `modules/ec2` module.

## Production Environment Characteristics:
- **High-Performance Compute:** `t3.large` instance size with higher compute and memory.
- **Enterprise Storage:** 100 GB gp3 volume with mandatory encryption.
- **Detailed Monitoring:** 1-minute CloudWatch metric alarms (`monitoring = true`).
- **Accidental Deletion Protection:** API Termination Protection enabled (`disable_api_termination = true`).
- **Compliance & Backup Tagging:** Strict SLA, Backup, and PCI-DSS tags.

## Commands

```bash
cd environments/prod
terraform init
terraform plan
terraform apply
```
