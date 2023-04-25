resource "tfe_workspace" "this" {
  organization = var.tfc_org_name
  project_id   = var.project_id

  name           = var.workspace_name
  execution_mode = "remote"

  tag_names = concat([
    "project:${var.project_name}"
    ],
    var.tags
  )
}

# Used to set workspace to automatically use `environments/${env}.tfvars
resource "tfe_variable" "cli_args" {
  workspace_id = tfe_workspace.this.id

  key      = "TF_CLI_ARGS_plan"
  value    = "-var-file=environment/${var.env}.tfvars"
  category = "env"

  description = "Sets workspace to automatically consume the correct .tfvars file."
}

# Allows workspace to know own env value
resource "tfe_variable" "env" {
  workspace_id = tfe_workspace.this.id

  key      = "env"
  value    = var.env
  category = "terraform"
}

# The following variables must be set to allow runs
# to authenticate to Azure.
#
# https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable
resource "tfe_variable" "enable_azure_provider_auth" {
  workspace_id = tfe_workspace.this.id

  key      = "TFC_AZURE_PROVIDER_AUTH"
  value    = "true"
  category = "env"

  description = "Enable the Workload Identity integration for Azure."
}

resource "tfe_variable" "tfc_azure_client_id" {
  workspace_id = tfe_workspace.this.id

  key      = "TFC_AZURE_RUN_CLIENT_ID"
  value    = azuread_application.tfc_application.application_id
  category = "env"

  description = "The Azure Client ID runs will use to authenticate."
}

# The following variables are optional; uncomment the ones you need!

# resource "tfe_variable" "tfc_azure_audience" {
#   workspace_id = tfe_workspace.my_workspace.id

#   key      = "TFC_AZURE_WORKLOAD_IDENTITY_AUDIENCE"
#   value    = var.tfc_azure_audience
#   category = "env"

#   description = "The value to use as the audience claim in run identity tokens"
# }