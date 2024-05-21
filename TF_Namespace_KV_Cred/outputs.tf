output "namespace_name" {
  description = "Path of the created namespace"
  value = vault_namespace.namespace
}

output "secret" {
  description = "Path of the static credentials"
  value       = vault_kv_secret_v2.secret
  sensitive = true
}

output "namespace_path" {
  description = "Path of the created namespace"
  value       = vault_namespace.namespace.path
}

output "kv_mount_path" {
  description = "Path of the KV mount"
  value       = vault_mount.kv.path
}

output "secret_path" {
  description = "Path of the stored secret"
  value       = vault_kv_secret_v2.secret.path
}


