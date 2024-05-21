resource "random_string" "random" {
  length           = 12
  special          = false
}

resource "random_password" "password" {
  length           = 10
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

output "static_credentials_path" {
  description = "Path of the stored static credentials"
  value       = vault_kv_secret_v2.static_credentials.path
}

output "namespace_token" {
  description = "Token with access to the namespace"
  value       = vault_token.namespace_token.id
  sensitive   = true
}
