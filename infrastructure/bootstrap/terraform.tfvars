# Files named `terraform.tfvars` are automatically used as var files by terraform.

workspaces = {
  example-dev = {
    project     = "example"
    description = "Used as an example for generating projects and workspaces"
    env         = "dev"
    tags = [
      "example",
      "not-actually-used",
    ]
  }
  raw-sandbox-mike = {
    project     = "raw-sandbox"
    description = "Used for standup of basic instance for initial testing"
    env         = "dev"
    tags = [
      "raw_sandbox",
      "env:mike-dev",
      "dev:mike",
    ]
  }
}