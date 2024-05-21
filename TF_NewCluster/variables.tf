variable "client_id" {
  description = "HCP client ID"
  type        = string
  default = "JJLxFxaiRy4RwxCGICrBodh8OFsPdrqr"
}

variable "client_secret" {
  description = "HCP client secret"
  type        = string
  sensitive   = true
  default = "hVWhMHnqHK6NqbEooXDmJRG0-20UfUsaNhQILfo25wJiv6EeEcbz_Jp48H4ljFgX"
}

variable "project_id" {
  description = "b854430b-0232-4270-96b2-21e6025fdc88"
  type        = string
  default = "b854430b-0232-4270-96b2-21e6025fdc88"
}

variable "hvn_name" {
  description = "Name of the HCP Virtual Network"
  type        = string
  default = "dtcc-dev-hvn"
}


variable "cluster_id" {
  description = "dtcc_dev_cluster"
  type        = string
  default = "dtcc-dev-cluster"
}

variable "cluster_name" {
  description = "dtcc_dev_cluster"
  type        = string
  default = "dtcc_dev_cluster"
}

variable "cluster_tier" {
  description = "Development"
  type        = string
  default = "Development"
}

variable "cluster_size" {
  description = "Extra Small"
  type        = string
  default = "Extra Small"
}

variable "hvn_id" {
  description = "dtcc-dev-hvn"
  type        = string
  default = "dtcc-dev-hvc"
}

variable "region" {
  description = "Oregon (us-west-2)"
  type        = string
  default = "Oregon (us-west-2)"
}

variable "public_endpoint" {
  description = "public end point"
  type        = bool
  default     = true
}
