provider "aviatrix" {
  username      = "admin"
  password      = data.terraform_remote_state.secrets.outputs.ctrl_ip
  controller_ip = data.terraform_remote_state.secrets.outputs.ctrl_password
}
