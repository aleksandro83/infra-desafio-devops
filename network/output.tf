output "vpc1" {
  value       = aws_vpc.vpc1.id
  description = "Id of VPC1"
}

output "subnet_public1" {
  value       = aws_subnet.subnet_public1.id
  description = "Id of subnet public 1"
}

output "subnet_private1" {
  value       = aws_subnet.subnet_private1.id
  description = "Id of subnet private 1"
}

output "key_name" {
  value       = aws_key_pair.my_key.key_name
  description = "Name of key pair RSA"
}

output "security_group" {
  value       = aws_security_group.services.id
  description = "Id of security Group"
}