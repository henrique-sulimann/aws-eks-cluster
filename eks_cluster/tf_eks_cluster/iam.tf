/* module "iam" {
    source = "git::https://github.com/terraform-aws-modules/terraform-aws-iam.git//modules/iam-assumable-role?ref=v3.8.0"
    trusted_role_arns = [
      "arn:aws:iam::132818155912:user/terraform",
    ]
    create_role = true
    role_name = "custom"
    role_requires_mfa = true

    custom_role_policy_arns = [
      "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy",
      "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController",
    ]
    number_of_custom_role_policy_arns = 2
} */