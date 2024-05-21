resource "vault_kv_secret_v2" "secret" {
  provider = vault.ns
  name = "mani-sec"
  mount = var.kv_mount_path
  cas   = 1
  delete_all_versions = true
  data_json = jsonencode(
  {
    zip       = var.sec_key,
    foo       = var.sec_value
  }
  )
}

resource "vault_kv_secret_v2" "static_credentials" {
  provider = vault.ns
  name = "mani-stat-cred"
  mount    = var.kv_mount_path

  data_json = jsonencode({
    username = random_string.random.result
    password = random_password.password.result
  })
}