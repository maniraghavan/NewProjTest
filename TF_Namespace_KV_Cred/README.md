# this Terraform project has been created with the below design.

- This terraform project was built with different .tf files for various resources
   - Create namespace
   - Create namespace token
   - create policy
   - create providers
   - create kv mount
   - create static credentials (currently this is randomized but this can be updated to create static credentials)
   - Apart from these this would have variables, output.tf etc

- This project would create all the above resources on the Vault instance which was setup in the previous step
- Current this project needs to be checked out to the local to perforom
     terraform init
     terraform plan
     terraform apply 
- Once applied this cluster should have new namespace, kv mount, appropriate policy and token created.


