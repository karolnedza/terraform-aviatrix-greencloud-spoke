module "azure-greencloud-spoke" {

  source  = "app.terraform.io/greencloud/azure-spoke-custom/aviatrix"

  # Inputs from Input Workspace
  name = var.name
  cidr = var.cidr
  region = var.region
  arm_subscription_id = var.arm_subscription_id

  # Secrets 

  arm_directory_id    = data.terraform_remote_state.secrets.outputs.tenant_id
  arm_application_id  = data.terraform_remote_state.secrets.outputs.client_id
  arm_application_key = data.terraform_remote_state.secrets.outputs.client_secret
  
  # Optional 

  # version = var.version
  # security_domain = var.security_domain
}


variable "ctrl_ip" {default = data.terraform_remote_state.secrets.outputs.ctrl_ip}
variable "ctrl_password" {default = data.terraform_remote_state.secrets.outputs.ctrl_password}
