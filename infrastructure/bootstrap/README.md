# Bootstrap

This directory contains an independent terraform configuration for bootstrapping terraform cloud projects and provider authentication. 

It primarily does this via OIDC providers:
- [TF Cloud <-> Azure OIDC documentation](https://developer.hashicorp.com/terraform/cloud-docs/workspaces/dynamic-provider-credentials/azure-configuration)

Additionally, it creates and configures terraform cloud workspaces for use in the rest of this repo.

The backing tf cloud workspace was manually configured, and uses local execution. This allows full bootstrapping using local credentials, while still ensuring state is managed.

To create additional workspaces, add entires in `terraform.tfvars`.


Note: to plan or apply this repo, you will need to have authentication to azure configured using one of the methods [here](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs#authenticating-to-azure)