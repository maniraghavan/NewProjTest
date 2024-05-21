variable "vault_address" {
  description = "The address of the Vault server"
  type        = string
}

variable "vault_token" {
  description = "The token to authenticate with Vault"
  type        = string
  sensitive   = true
}

variable "namespace_name" {
  description = "The name of the namespace"
  type        = string
}

variable "kv_mount_path" {
  description = "The path to mount the KV store"
  type        = string
  default     = "secret"
}

variable "secret_path" {
  description = "The path where the secret will be stored"
  type        = string
  default     = "mr-sec"
}

variable "secret_data" {
  description = "The key-value pairs to be stored as the secret"
  type        = map(string)
}

variable "sec_key" {
  description = "The key for the secret"
  type        = string
}

variable "sec_value" {
  description = "The value for the secret"
  type        = string
}
