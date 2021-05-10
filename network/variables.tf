# Provider config
variable "credentials_file" {
  description = "PATH to credentials file"
  default     = "~/.aws/credentials"
}
variable "profile" {
  description = "Profile of AWS credential."
}

variable "region" {
  description = "AWS region."
}

#General
variable "tags" {
  description = "Maps of tags."
  type        = map
  default     = {}
}

variable "environment" {
  description = "Name Terraform workspace."
}

variable "vpc1_cidr_block" {
  description = "CIDR block to vpc1."
}

variable "subnet_public1_cidr_block" {
  description = "CIDR block to subnet public1."
}

variable "subnet_private1_cidr_block" {
  description = "CIDR block to subnet private1."
}

variable "address_allowed" {
  description = "IP or Net address allowed for remote access."
}

variable "aws_key_name" {
  description = "Key pair RSA name."
}

variable "aws_public_key_path" {
  description = "/home/"
}

variable "dynamodb_table_name"{
  description = "DynamoDB Table name for lock Terraform tfstate remote."
}