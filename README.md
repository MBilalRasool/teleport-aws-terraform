This guide will crate an Ec2 instance and deploy teleport cluster on it. The outputs will the the domain name of teleport cluster and the public IP.

** Run the Terraform code **
Just add the values in terraform.tfvars or var.tf and run the terraform code.
make sure to configure aws crendentials before this.

after the cluster is up and running. create user to access the teleport cluster using this command

```sudo tctl users add username --roles=editor,access --logins=root,ubuntu```


