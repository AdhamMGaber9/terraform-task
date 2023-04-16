resource "aws_route_table" "public" {
  vpc_id = aws_vpc.tf.id
}


resource "aws_route" "public-route" {
  route_table_id            = aws_route_table.public.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.igw.id
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.tf.id
}

resource "aws_route" "private-route" {
  route_table_id            = aws_route_table.private.id
  destination_cidr_block    = "0.0.0.0/0"

  gateway_id = aws_nat_gateway.nat_gateway.id
}
