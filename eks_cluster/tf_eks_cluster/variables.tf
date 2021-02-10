variable "region" {
  type = string
  default = "us-east-1"
}
variable "cluster_name" {
  type = string
  default = "eks_cluster_terraform"
}
/* variable "workers_role_name" {
  type = string
  default = "${var.cluster_name}-workers-role"
} */