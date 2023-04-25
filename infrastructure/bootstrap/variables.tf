variable "tfc_org_name" {
  type    = string
  default = "lasagna-love"
}

variable "workspaces" {
  type = map(object({
    project     = string
    description = string
    env         = string
    tags        = list(string)
  }))
}
