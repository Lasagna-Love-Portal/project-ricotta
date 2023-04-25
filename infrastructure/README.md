# Infrastructure

This folder should hold all configuration required to run the application in the cloud. 

We are using:
- Azure for primary cloud provider
- Terraform for Infrastructure as Code
- [Terraform Cloud](https://app.terraform.io/) for terraform state and operation management.
  - Organization: https://app.terraform.io/app/lasagna-love/

## Directory Structure

Separate "projects"/groups of resources/etc should each have their own subdirectory, which:
- Includes a `README` discussing purpose, general architecture, and use.
- Possibly include deeper subdirectories if a project requires multiple parallel configurations (not instances of the same configuration: use terraform workspaces for that).
- Be organized to act as the root of a terraform configuration. (This can be shifted to a subdirectory if additional organization is required).


## Terraform Workspaces

Workspaces act as isolated instances of a given configuration. Multiple workspaces can use the same configuration, but have different lifecycles or input variables. Each workspace would create and manage separate resources.

Workspaces are created and managed in the `bootstrap/` directory. See the `README` there for additional information.