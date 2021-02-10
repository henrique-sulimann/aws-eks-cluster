module "zones" {
    source = "git::https://github.com/terraform-aws-modules/terraform-aws-route53.git//modules/zones?ref=v1.6.0"
    zones = {
        "sulimann.com" = {
            comment = "dominio hsulimann para o cluster kubernetes"
            tags = {
                env = "dev"
            }
        }
    }
}

/* module "records" {
    source = "git::https://github.com/terraform-aws-modules/terraform-aws-route53.git//?ref=v1.6.0"
    zone_name = keys(module.zones.this_route53_zone_zone_id)[0]
    records = [
        {
            name = "kubernetes"
        }
    ]
} */