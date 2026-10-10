# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Purpose

A personal learning repo for Terraform on AWS. It holds study notes alongside practice Terraform configurations. It is not a production codebase. There is no CI, no remote backend, no shared modules and no test suite.

## Layout

- `Learning/Day_NN/day_NN`: daily study notes. These are plain-text/Markdown files with no extension. Each day gets its own folder (`Day_01`, `Day_02`, …).
- `terraform-basics/<topic>/`: small, single-resource exercises (e.g. `ec2-instance`).
- `terraform-projects/<project>/`: multi-resource builds (e.g. `aws-vpc-architecture`). These use the standard `main.tf` / `variables.tf` split, and outputs/providers are added as separate files when needed.

Each folder under `terraform-basics/` and `terraform-projects/` is an independent Terraform root module with its own state. Run commands from inside that folder, not from the repo root. Several `.tf` files are currently empty placeholders.

## Commands

Run these from inside a specific root module directory:

```sh
terraform init        # download providers / set up backend
terraform fmt         # format (use -recursive from repo root to format everything)
terraform validate    # syntax/consistency check (requires init first)
terraform plan
terraform apply
terraform destroy
```

`apply` and `destroy` create and delete real AWS resources, which can cost money. Never run them unless the user explicitly asks. Use `fmt`, `validate` and `plan` for verification.

## Notes

- There is no `.gitignore` yet. Make sure `.terraform/`, `*.tfstate*`, `*.tfvars` (if they hold secrets) and `crash.log` are not committed.
- The git history uses commit messages like `Update day_01`.
