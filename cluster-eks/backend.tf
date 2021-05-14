# Terraform backend for remote state
terraform {
  backend "s3" {
    encrypt                 = true
    bucket                  = "desafio-devops-remote-state-01"
    dynamodb_table          = "desafio-devops-terraform-state-lock-dynamo"
    region                  = "us-east-1"
    workspace_key_prefix    = "dev"
    key                     = "eks/terraform.tfstate"
    profile                 = "default"
    shared_credentials_file = "~/.aws/credentials"
  }
}
