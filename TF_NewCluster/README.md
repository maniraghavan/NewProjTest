## HashiCorp Vault Cluster Setup.

This terraform module in designed to create a vault cluster using the free tier of HashiCorp Cloud Terraform

 - A new workspace has been created in the name of DTCC-Assessment on Terraform cloud
 - A project DTCC-Demo has been created under it.

- A new terraform module was created
-   Added the provider as HCP
-   The client Id and secret has been created from the Access Controls -> service principal
-   The same has been used to create this cluster on the Hashicorp Cloud Platform
-   A hvn has been created in the same main.tf but this can be created as a separate file for clarify and re-usability
-   HCP vault cluster object type will be used to create a new cluster with approprite name, HVN, region etc.
-   the admin token can be printed or this can be retrieved from console
-   This cluster is created on the Dev mode.
