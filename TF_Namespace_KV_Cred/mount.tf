resource "vault_mount" "kv" {
  provider = vault.ns
  path        = var.kv_mount_path
  type        = "kv"
  description = "KV store for ${var.namespace_name} namespace"
  options = { Version = "1"}
}