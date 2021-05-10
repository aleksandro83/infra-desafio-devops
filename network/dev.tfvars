# Provider config
profile     = "default"
region      = "us-east-1"
environment = "dev"

# General
# Crie as chaves pública e privada com o comando:
# sudo ssh-keygen -t rsa -b 2048 -v -f /home/aws-dev.pem
# Não crie senhas para as chaves
#
# A public key será criada neste caminho: '/home/aws-dev.pem.pub'
# e será registrada na AWS com o nome 'aws-dev'. Esta public key será
# associada às instâncias EC2 na criação do cluster e assim
# você poderá acessá-las via SSH usando a private key
# que está em: '/home/aws-dev.pem'.
aws_public_key_path        = "/home/aws-dev.pem.pub"
aws_key_name               = "aws-dev"
address_allowed            = "189.110.198.240/32" # Seu IP público
bucket_name                = "desafio-devops-remote-state-01"
vpc1_cidr_block            = "10.0.0.0/16"
subnet_public1_cidr_block  = "10.0.1.0/24"
subnet_private1_cidr_block = "10.0.3.0/24"

tags = {
  Scost       = "dev",
  Terraform   = "true",
  Environment = "dev"
}