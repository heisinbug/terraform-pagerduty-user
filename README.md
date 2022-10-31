# Terraform Pagerduty User



Terraform module that creates multiple users at once in Pagerduty .


## Description

This module provides settings:

- Create multiple users at once in Pagerduty , users should be added in JSON file. This module doesn't have any required values but you MUST provide all the required inputs while adding users in JSON file .

## Usage

### Setup

```hcl
provider "pagerduty" {
  token = "Pagerduty_Token"
}
module "pagerduty_user" {
  source          = "git@github.com:heisinbug/terraform-pagerduty-user.git"
}
```

<!-- BEGINNING OF GENERATED BY TERRAFORM-DOCS -->

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| pagerduty | >= 2.5.2 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | The name of the user. | `any` | n/a | yes |
| email | The user's main email address. | `any` | n/a | yes |
| role | Account must have the 'read\_only\_users' ability to set a user as a 'read\_only\_user' or a 'read\_only\_limited\_user', and must have advanced permissions abilities to set a user as observer or 'restricted\_access'. Can be 'admin', 'limited\_user', 'observer', 'owner', 'read\_only\_user', 'read\_only\_limited\_user', 'restricted\_access', or 'user'. | `string` | `"user"` | no |
| job\_title | The user's title. | `string` | `"Engineer"` | no |
| description | The Description of the user. | `any` | `"Managed By Terraform"` | no |

## Outputs

| Name | Description |
|------|-------------|
| users | This will ouput resource (user) defined under module | 

<!-- END OF GENERATED BY TERRAFORM-DOCS -->
