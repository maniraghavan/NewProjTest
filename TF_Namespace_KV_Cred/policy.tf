resource "vault_policy" "namespace_policy" {
  name = "dtcc-test-policy"
  policy = <<EOT
path "secret/data/dev/*" "secret/data/aws/dev/*" "secret/data/azure/dev/*" {
  capabilities = ["create", "read", "update", "list"]
}
EOT
}

resource "vault_policy" "dtcc_policy" {
  name = "dtcc-test-policy"
  policy = <<EOT
path "secret/data/dev/*"  {
  capabilities = ["create", "read", "update", "list"] }
path  "secret/data/aws/dev/*"  {
  capabilities = ["create", "read", "update", "list"] }
path  "secret/data/azure/dev/*" {
  capabilities = ["create", "read", "update", "list"] }
path "auth/token/lookup-accessor" {
  capabilities = ["update"] }
path "auth/token/revoke-accessor" {
  capabilities = ["update"] }
EOT
}

