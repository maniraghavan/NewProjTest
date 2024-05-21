output "vault_address" {
  description = "Public endpoint of the Vault cluster"
  value       = hcp_vault_cluster.vault_cluster.public_endpoint
}

output "admin_token" {
  description = "Admin token for the Vault cluster"
  value       = hcp_vault_cluster_admin_token.admin_token.token
  sensitive   = true
}