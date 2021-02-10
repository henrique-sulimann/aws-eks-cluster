/* module "alb_ingress_controller" {
    source = "git::https://github.com/iplabs/terraform-kubernetes-alb-ingress-controller.git//?ref=v3.4.0"
    providers = {
      kubernetes = kubernetes
    }
    k8s_cluster_type = "eks"
    k8s_namespace = "kube-system"

    aws_region_name = var.region
    k8s_cluster_name = var.cluster_name

    depends_on = [ module.eks_cluster ]
} */