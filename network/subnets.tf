resource "aws_subnet" "public1" {
  vpc_id                  = aws_vpc.tf.id
  cidr_block              = var.public_1_cidr
  map_public_ip_on_launch = true
  availability_zone = var.az1
  tags = {
    Name = "public_subnet_1"
  }
}
resource "aws_subnet" "public2" {
  vpc_id                  = aws_vpc.tf.id
  cidr_block              = var.public_2_cidr
  map_public_ip_on_launch = true
  availability_zone = var.az2
  tags = {
    Name = "public_subnet_2"
  }
}



resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.tf.id
  cidr_block = var.private_1_cidr
  availability_zone = var.az1
tags = {
    Name = "private_subnet_1"
  }
}

resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.tf.id
  cidr_block = var.private_2_cidr
  availability_zone = var.az2
  tags = {
    Name = "private_subnet_2"
  }
}