resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.nat-ip.id
  subnet_id     = aws_subnet.public1.id
  depends_on = [
    aws_internet_gateway.igw
  ]
}