terraform {
  required_version = "~> 1.4.0"
  cloud {
    # variables not allowed in `terraform` block
    organization = "lasagna-love"
    workspaces {
      name = "bootstrap-lasagna-love"
    }
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.53"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.37"
    }
    tfe = {
      version = "~> 0.44"
    }
  }
}


provider "azurerm" {}

provider "azuread" {}

provider "tfe" {
  organization = var.tfc_org_name
}