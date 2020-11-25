module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = local.cluster_name
  cluster_version = "1.18"
  subnets         = module.vpc.public_subnets

  tags = {
    Environment = "losgalacticos"
    GithubRepo  = "terraform-aws-eks"
    GithubOrg   = "terraform-aws-modules"
  }

  vpc_id = module.vpc.vpc_id

  worker_groups = [
    {
      name                          = "worker-group"
      instance_type                 = "t2.medium"
      additional_userdata           = "echo foo bar"
      asg_desired_capacity          = 3
      additional_security_group_ids = [aws_security_group.worker_group_mgmt.id]
    },
  ]
}

data "aws_eks_cluster" "cluster" {
  name = module.eks.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.eks.cluster_id
}
