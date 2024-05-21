provider "vault" {
  address = var.vault_address
  token   = var.vault_token
}

provider "vault" {
  alias     = "ns"
  address   = var.vault_address
  token     = var.vault_token
  namespace = vault_namespace.namespace.path
}
