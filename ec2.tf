resource "aws_key_pair" "key_pair" {
  key_name   = "aws_keys_pairs"       
  public_key = tls_private_key.rsa.public_key_openssh

  provisioner "local-exec" {   
    command = <<-EOT
      echo '${tls_private_key.rsa.private_key_pem}' > aws_keys_pairs.pem
      chmod 400 aws_keys_pairs.pem
    EOT
  }
}
resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = "4096"
}

# resource "local_file" "tf-key" {
#   content = tls_private_key.rsa.private_key_pem
#   filename = "key_pair.pem"
# }
resource "aws_instance" "ec-public" {
  ami                     = var.AMI_ID
  instance_type           = var.EC2_TYPE
  subnet_id = module.my_network.pub_sub_1
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  key_name = aws_key_pair.key_pair.key_name
  provisioner "local-exec" {
    command = <<EOF
      echo ${self.public_ip}
    EOF
  }

 }
 resource "aws_instance" "ec-private" {
  ami                     = var.AMI_ID
  instance_type           = var.EC2_TYPE
  subnet_id = module.my_network.pri_sub_1
  vpc_security_group_ids = [aws_security_group.allow_ssh3000.id]
  key_name = aws_key_pair.key_pair.key_name
 }
#    connection {
#      type        = "ssh"
#      host        = self.public_ip
#      user        = "ubuntu"
     
#      # Mention the exact private key name which will be generated 
#      private_key = file("aws_keys_pairs.pem")
#      timeout     = "4m"
#    }