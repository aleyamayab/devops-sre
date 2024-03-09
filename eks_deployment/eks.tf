# Define the EKS cluster module
module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 19.0"

  cluster_name    = "my-eks-cluster-deploy" # Replace with your desired cluster name
  cluster_version = "1.24"                  # Replace with your desired EKS version

  vpc_id                          = "vpc-0a8418569c7846653" # Replace with your VPC ID
  subnet_ids                      = ["subnet-082693184ac10b951", "subnet-06e3835b9f61e0751", "subnet-0c480d98fe8d2e6e8"]
  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = true

  manage_aws_auth_configmap = true #Manejar usuario por el modulo de terraform

  eks_managed_node_groups = {
    eks_nodes = {
      desired_capacity = 1
      max_capacity     = 2
      min_capacity     = 1
      instance_type    = "t2.medium"
      tags = {
        Terraform   = "true"
        Environment = "deployment"
      }
    }
  }
}



