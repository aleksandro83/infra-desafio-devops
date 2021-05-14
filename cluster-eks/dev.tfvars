# Provider config
profile         = "default"
region          = "us-east-1"
environment     = "dev"
address_allowed = "189.110.198.240/32"

# Get AWS ACCOUNT-ID with command:
# aws sts get-caller-identity --query Account --output text --profile PROFILE_NAME_AWS
# Reference: https://docs.aws.amazon.com/general/latest/gr/acct-identifiers.html

# Networking
subnets = ["subnet-0eb4cb6a40c9deccd", "subnet-00ad9e7aedcf94d5e"]
vpc_id  = "vpc-0498fcbd3a607d1b7" #see your VPC ID

# EKS
cluster_name                             = "cluster-eks-dev"
cluster_version                          = "1.17"
lt_name                                  = "cluster-ec2"
autoscaling_enabled                      = true
# https://aws.amazon.com/ec2/pricing/on-demand/
override_instance_types                  = ["t3.micro", "t3a.micro"]
on_demand_percentage_above_base_capacity = 50
asg_min_size                             = 2
asg_max_size                             = 20
asg_desired_capacity                     = 2
root_volume_size                         = 20
aws_public_key_path                      = "/home/aws-dev.pem.pub"
aws_key_name                             = "aws-eks-dev"
public_ip                                = false
cluster_endpoint_public_access           = true
cluster_endpoint_public_access_cidrs     = ["0.0.0.0/0"]
cluster_endpoint_private_access          = true
cluster_endpoint_private_access_cidrs    = ["0.0.0.0/0"]
kubelet_extra_args                       = "--node-labels=node.kubernetes.io/lifecycle=spot"
suspended_processes                      = ["AZRebalance"]
cluster_enabled_log_types                = ["api", "audit"]
cluster_log_retention_in_days            = "7"
workers_additional_policies              = [
  "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy",
  "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess",
  "arn:aws:iam::aws:policy/CloudWatchReadOnlyAccess",
  "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess",
  "arn:aws:iam::716957643652:policy/eks_cluster_autoscaler",
  "arn:aws:iam::716957643652:policy/alb-ingress-controller"
]

worker_additional_security_group_ids     = ["sg-06eadc59a86c6a6d3"]

map_roles = [
  {
    rolearn  = "arn:aws:iam::716957643652:role/aws-service-role/eks.amazonaws.com/AWSServiceRoleForAmazonEKS"
    username = "Admins"
    groups   = ["system:AdmF"]
  },
]

map_users = [
  {
    userarn  = "arn:aws:iam::716957643652:user/aleksandro.ribeiro"
    username = "aleksandro.ribeiro"
    groups   = ["system:AdmF"]
  },
]

# General
tags = {
  Scost                                             = "dev",
  Terraform                                         = "true",
  Environment                                       = "dev",
  "k8s.io/cluster-autoscaler/enabled"               = "true",
  "k8s.io/cluster-autoscaler/cluster-eks-dev" = "owned"
  "kubernetes.io/cluster/cluster-eks-dev"     = "owned"
}