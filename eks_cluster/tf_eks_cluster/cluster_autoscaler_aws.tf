/* data "aws_iam_role" "kubernetes_worker_node" {
  name = "kube-clb-main-wg-primary"
}
module "cluster_autoscaler_aws" {
    source = "git::https://github.com/cookielab/terraform-kubernetes-cluster-autoscaler-aws.git//?ref=0.11.0"
    #version = "0.9.0"
    aws_iam_role_for_policy = data.aws_iam_role.kubernetes_worker_node.name
    asg_tags = [
        "k8s.io/cluster-autoscaler/enabled",
        "k8s.io/cluster-autoscaler/${var.cluster_name}",
    ]
    kubernetes_deployment_image_tag = "v1.14.7"
    depends_on = [
        module.eks_cluster
    ]
} */