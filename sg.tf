resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow ssh inbound traffic"
  vpc_id      = module.my_network.vpc_id

  ingress {
    description      = "ssh from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}
resource "aws_security_group" "allow_ssh3000" {
  name        = "allow_ssh3000"
  description = "Allow ssh inbound traffic"
  vpc_id      = module.my_network.vpc_id

  ingress {
    description      = "ssh from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [module.my_network.vpc_cidr]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ssh3000"
  }
}

resource "aws_security_group" "rds-sg" {
  name = "rds-sg"
  vpc_id = module.my_network.vpc_id
  ingress {
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
    cidr_blocks      = [var.PRIVATE_SUBNET_1_CIDR,var.PRIVATE_SUBNET_2_CIDR]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "redis-sg" {
  name = "redis-sg"
   ingress {
    from_port = 6379
    to_port = 6379
    protocol = "tcp"
    cidr_blocks      = [var.PRIVATE_SUBNET_1_CIDR,var.PRIVATE_SUBNET_2_CIDR]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}