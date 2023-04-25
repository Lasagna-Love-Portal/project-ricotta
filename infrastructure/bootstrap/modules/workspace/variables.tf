
variable "tfc_hostname" {
  type = string
}

variable "tfc_azure_audience" {
  type = string
}

variable "tfc_org_name" {
  type = string
}

variable "project_name" {
  type = string
}

variable "project_id" {
  type = string
}

variable "workspace_name" {
  type = string
}

variable "env" {
  type = string
}

variable "description" {
  type = string
}

variable "tags" {
  type = list(string)
}
