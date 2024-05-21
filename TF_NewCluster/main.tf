terraform {
  required_providers {
    hcp = {
      source = "hashicorp/hcp"
    }
  }
}

provider "hcp" {
  client_id     = var.client_id
  client_secret = var.client_secret
}

resource "hcp_hvn" "dtcc_hvn" {
  hvn_id = "dtcc-dev-hvn"
  cloud_provider = "aws"
  region = "us-west-2"
  cidr_block = "172.25.16.0/20"

  timeouts {
    create = "30m"
    delete = "30m"
  }
}

resource "hcp_vault_cluster" "dtcc_dev_cluster" {
  project_id       = var.project_id
  cluster_id = var.cluster_id
  hvn_id = hcp_hvn.dtcc_hvn.hvn_id
  public_endpoint  = var.public_endpoint

  timeouts {
    create = "30m"
    delete = "30m"
  }
}

resource "hcp_vault_cluster_admin_token" "admin_token" {
  cluster_id = hcp_vault_cluster.dtcc_dev_cluster.cluster_id
}

output "vault_address" {
  value = hcp_vault_cluster.dtcc_dev_cluster.public_endpoint
}

output "admin_token" {
  value = hcp_vault_cluster_admin_token.admin_token.token
  sensitive = true
}
