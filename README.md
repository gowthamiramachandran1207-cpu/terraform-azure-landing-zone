# Terraform Azure landing zone

This project creates a basic Azure landing zone with:

- Resource groups
- Virtual network and subnets
- Network security groups
- Storage accounts

## Files

- `main.tf` — core Azure resources
- `variables.tf` — input variables and defaults
- `versions.tf` — Terraform and provider version constraints
- `outputs.tf` — resource outputs
- `terraform.tfvars.example` — example values for deployment

## Prerequisites

1. Install Terraform: https://developer.hashicorp.com/terraform/install
2. Authenticate to Azure:
   - `az login`
   - or use a service principal with environment variables

## Example deployment

```bash
terraform init
terraform plan
terraform apply
```

## Optional custom variables

Copy the example file and update values:

```bash
copy terraform.tfvars.example terraform.tfvars
```

Then adjust the values for your environment before running `terraform apply`.

## What gets created

The default configuration creates:

- 3 resource groups: `dev-rg-network`, `dev-rg-shared`, `dev-rg-app`
- 1 VNet with 2 subnets in the network resource group
- 1 NSG applied to the subnets
- 2 storage accounts in the shared resource group

## Clean up

```bash
terraform destroy
```
