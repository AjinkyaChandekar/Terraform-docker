
terraform {
  backend "s3" {
    bucket = "terraformclouds3"
    key    = "docker.terraform.tfstate"
    region = "us-east-1"
    #dynamodb_table = "s3_remote_state"
    access_key = "AKIAW5IJSDZ3FJPA4RPG"
    secret_key = "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"
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
   
