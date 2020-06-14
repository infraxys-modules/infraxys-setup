resource "aws_vpc" "vpc" {
    cidr_block = var.cidr_block
    instance_tenancy = "default"
    enable_dns_support = true
    enable_dns_hostnames = false
    enable_classiclink = false
    enable_classiclink_dns_support = false
    assign_generated_ipv6_cidr_block = false
    tags = var.tags
}


output "vpc_id" {
    value = aws_vpc.vpc.id
}

output "vpc_name" {
    value = var.vpc_name
}

output owner_id {
    value = aws_vpc.vpc.owner_id
}

