module "eks_cluster" {
    source = "git::https://github.com/terraform-aws-modules/terraform-aws-eks.git//?ref=v14.0.0"
    cluster_name = var.cluster_name
    cluster_version="1.17"
    subnets = concat(module.vpc.public_subnets,module.vpc.private_subnets)
    vpc_id = module.vpc.vpc_id
    workers_role_name = local.workers_role_name
    workers_group_defaults = {
    root_volume_type = "gp2"
    }

    node_groups_defaults = {
    ami_type  = "AL2_x86_64"
    disk_size = 50
    } 
    node_groups = {
    eks_nodes = {
      desired_capacity = 1
      max_capacity     = 2
      min_capacity     = 1
      instance_types = ["t2.micro"]
      capacity_type  = "SPOT"
    }
    }
    worker_groups = [
      {
        name = "${local.cluster_name}-workgroup-1"
        instance_type = "t2.micro"
        asg_max_size = 3
        asg_min_size = 1
        asg_desired_capacity = 2
        additional_security_group_ids = [module.security_group_worker_one.this_security_group_id]
        /* tags = [
          {
          "key"                 = "k8s.io/cluster-autoscaler/enabled"
          "propagate_at_launch" = "false"
          "value"               = "true"
          },
          {
          "key"                 = "k8s.io/cluster-autoscaler/eks-cluster-terraform"
          "propagate_at_launch" = "false"
          "value"               = "true"
          }
        ] */
      },
      {
        name = "${local.cluster_name}-workgroup-2"
        instance_type = "t2.micro"
        asg_max_size = 3
        asg_min_size = 1
        asg_desired_capacity = 2
        additional_security_group_ids = [module.security_group_worker_two.this_security_group_id]
        /* tags = [
          {
          "key"                 = "k8s.io/cluster-autoscaler/enabled"
          "propagate_at_launch" = "false"
          "value"               = "true"
          },
          {
          "key"                 = "k8s.io/cluster-autoscaler/eks-cluster-terraform"
          "propagate_at_launch" = "false"
          "value"               = "true"
          }
        ] */
      }
    ]
    depends_on = [ module.vpc, module.security_group_worker_one,module.security_group_worker_two,module.security_group_worker_all ]
}