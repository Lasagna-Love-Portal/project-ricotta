terraform {
  required_version = "~> 1.4.0"
  cloud {
    # variables not allowed in `terraform` block
    organization = "lasagna-love"
    workspaces {
      tagtags = [
        "raw_sandbox"
      ]
    }
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.53"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}