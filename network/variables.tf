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