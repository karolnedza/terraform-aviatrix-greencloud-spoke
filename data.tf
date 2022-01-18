data "terraform_remote_state" "secrets" {
  backend = "remote"
  config = {
    organization = "greencloud"
    workspaces = {
      name = "secrets"
    }
  }
}