resource "aws_db_subnet_group" "default" {
  name       = "main"
  subnet_ids = [module.my_network.pri_sub_1,module.my_network.pri_sub_2]

  tags = {
    Name = "My DB subnet groups"
  }
}

resource "aws_db_instance" "default" {
  # subnet_id =module.my_network.pri_sub_1
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "tf"
  password             = var.db_pass
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  # vpc_security_group_ids = [ aws_security_group.rds-sg.id ]
  db_subnet_group_name = aws_db_subnet_group.default.name
}