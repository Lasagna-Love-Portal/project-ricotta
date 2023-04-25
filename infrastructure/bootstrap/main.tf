locals {
  tfc_hostname       = "app.terraform.io"
  tfc_azure_audience = "api://AzureADTokenExchange"

  project_list = distinct([for v in var.workspaces : v.project])
}

resource "tfe_project" "this" {
  for_each     = toset(local.project_list)
  organization = var.tfc_org_name
  name         = each.key
}

module "workspaces" {
  for_each = var.workspaces
  source   = "./modules/workspace"

  tfc_hostname       = local.tfc_hostname
  tfc_azure_audience = local.tfc_azure_audience
  tfc_org_name       = var.tfc_org_name

  project_name   = each.value.project
  project_id     = tfe_project.this[each.value.project].id
  workspace_name = each.key
  env            = each.value.env
  description    = each.value.description
  tags           = each.value.tags
}