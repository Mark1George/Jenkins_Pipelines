resource "aws_vpc" "myvpc" {
  cidr_block = var.vp_cidr #"10.0.0.0/16"
  enable_dns_hostnames = "true"
  tags = {
    Name = var.vpc_name
  }
}
