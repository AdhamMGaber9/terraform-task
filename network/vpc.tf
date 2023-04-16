resource "aws_vpc" "tf" {
  cidr_block           = var.cidr
  enable_dns_hostnames = true
  tags = {
    Name = var.name
  }
}