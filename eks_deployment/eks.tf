# Define the EKS cluster module
module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 19.0"

  cluster_name    = "cluster-deploy" # Replace with your desired cluster name
  cluster_version = "1.24"                  # Replace with your desired EKS version
  vpc_id                          = "vpc-0a8418569c7846653" # Replace with your VPC ID
  subnet_ids                      = ["subnet-082693184ac10b951", "subnet-06e3835b9f61e0751", "subnet-04526f45cd9228bd9"]
  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = true

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
