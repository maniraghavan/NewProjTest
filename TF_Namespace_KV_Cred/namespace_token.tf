resource "vault_token" "namespace_token" {
  policies = [vault_policy.dtcc_policy.name]
}