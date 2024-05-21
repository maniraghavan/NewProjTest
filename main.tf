terraform {
  backend "remote" {
    organization = "MR_Test"

    workspaces {
      name = "DTCC-Assessment-New"
    }
  }
}

provider "vault" {
  address = var.vault_address
  token   = var.vault_token
}

module "create_resources" {
  source          = "./modules/TF_Namespace_KV_Cred"
  namespace_name  = var.namespace_name
  kv_mount_path   = var.kv_mount_path
  secret_path     = var.secret_path
  static_username = var.sec_key
  static_password = var.sec_value
}
