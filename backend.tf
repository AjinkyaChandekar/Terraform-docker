
terraform {
  backend "s3" {
    bucket = "terraformclouds3"
    key    = "docker.terraform.tfstate"
    region = "us-east-1"
    #dynamodb_table = "s3_remote_state"
    access_key = 
    secret_key = 
    #access_key = ${{ secrets.access_key }}
    #secret_key = ${{ secrets.secret_key }}
  }
}
/*

# Using a single workspace from Terraform Cloud:
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "dmart"

    workspaces {
      name = "Terraform-docker"
    }
  }
}
*/
   
