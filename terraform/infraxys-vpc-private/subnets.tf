resource "aws_subnet" "public" {
    vpc_id     = aws_vpc.vpc.id

    cidr_block = "10.0.1.0/24"

    tags = {
        Name = "Main"
    }
}



output "bastion_security_group_id" {
    value = module.bastion.security_group_id
}

output "shared_subnets" {
    value = module.vpc.shared_subnets
}

output "private_subnets" {
    value = module.vpc.private_subnets
}

output "public_subnets" {
    value = module.vpc.public_subnets
}

output "r53_zone_id" {
    value = module.vpc.r53_zone_id
}

output "default_security_group_id" {
    value = module.vpc.default_security_group_id
}