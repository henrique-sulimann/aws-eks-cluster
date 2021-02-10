output "cluster_endpoint" {
    value = module.eks_cluster.cluster_endpoint
}
output "cluster_security_group_id" {
    value = module.eks_cluster.cluster_security_group_id
}
output "kubectl_config" {
    value = module.eks_cluster.kubeconfig
}
output "config_map_aws_auth" {
    value = module.eks_cluster.config_map_aws_auth
}
output "region" {
    value = var.region
}
output "cluster_name" {
    value = var.cluster_name
}
