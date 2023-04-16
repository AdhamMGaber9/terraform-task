output vpc_id {
  value = aws_vpc.tf.id
}
output vpc_cidr {
  value = aws_vpc.tf.cidr_block
}

output pub_sub_1 {
  value = aws_subnet.public1.id
}

output pub_sub_2 {
  value = aws_subnet.public2.id
}

output pri_sub_1 {
  value = aws_subnet.private1.id
}


output pri_sub_2{
  value = aws_subnet.private2.id
}

