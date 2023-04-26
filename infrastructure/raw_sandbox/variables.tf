variable "env" {
  description = "Environment name. Should be provided by tf cloud workspace as a part of bootstrap"
  type        = string
}

variable "public_key" {
  description = "Public key for sandbox owner. Used for SSH access to box."
  type = string
}