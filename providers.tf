provider "aviatrix" {
  username      = "admin"
  controller_ip      = data.terraform_remote_state.secrets.outputs.ctrl_ip
  password = data.terraform_remote_state.secrets.outputs.ctrl_password
}



