module "security_group_worker_one" {
    source = "git::https://github.com/terraform-aws-modules/terraform-aws-security-group.git?ref=v3.17.0"
    name = "eks_security_group"
    vpc_id = module.vpc.vpc_id
    ingress_cidr_blocks      = [module.vpc.vpc_cidr_block]
    ingress_rules            = ["ssh-tcp"]
    /* ingress_with_cidr_blocks = [
        {
            from_port = 22
            to_port = 22
            protocol = "tcp"
            cidr_blocks = [module.vpc.vpc_cidr_block]
        }
    ] */
    depends_on = [ module.vpc ]
}
module "security_group_worker_two" {
    source = "git::https://github.com/terraform-aws-modules/terraform-aws-security-group.git?ref=v3.17.0"
    name = "eks_security_group"
    vpc_id = module.vpc.vpc_id
    ingress_cidr_blocks      = ["172.16.0.0/12"]
    ingress_rules            = ["ssh-tcp"]
    /* ingress_with_cidr_blocks = [
        {
            from_port = 22
            to_port = 22
            protocol = "tcp"
            cidr_blocks = ["172.16.0.0/12"]
        }
    ] */
    depends_on = [ module.vpc ]
}
module "security_group_worker_all" {
    source = "git::https://github.com/terraform-aws-modules/terraform-aws-security-group.git?ref=v3.17.0"
    name = "eks_security_group"
    vpc_id = module.vpc.vpc_id
    ingress_cidr_blocks      = [module.vpc.vpc_cidr_block,"172.16.0.0/12","10.0.0.0/8"]
    ingress_rules            = ["ssh-tcp"]
    /* ingress_with_cidr_blocks = [
        {
            from_port = 22
            to_port = 22
            protocol = "tcp"
            cidr_blocks = [module.vpc.vpc_cidr_block, "172.16.0.0/12", "10.0.0.0/8"]
        }
    ] */
    depends_on = [ module.vpc ]
}