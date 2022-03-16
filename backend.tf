/*
terraform {
  backend "s3" {
    bucket = "app01-prod01"
    key    = "app01-prod01.terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "s3_remote_state"
    access_key = "AKIA3OTBACMSQGJ5G64F"
    secret_key = "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"
  }
}
*/

# Using a single workspace from Terraform Cloud:
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "dmart"

    workspaces {
      name = "Prod-Digital-Mindtree"
    }
  }
}

   