/* module "external_dns_aws" {
    source = "git::https://github.com/cookielab/terraform-kubernetes-external-dns-aws.git//?ref=0.11.0"
    domains = [
        "sulimann.com"
    ]
    sources = [
        "ingress"
    ]

    owner_id = "kube-clb-main"
    aws_iam_role_for_policy = local.workers_role_name

    depends_on = [
        module.eks_cluster,
        module.zones
    ]
} */