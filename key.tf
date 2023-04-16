

# resource "aws_key_pair" "kp" {
#   key_name   = "myKey" # Create a "myKey" to AWS!!
#   public_key = tls_private_key.key.public_key_openssh
#   provisioner "local-exec" {   
#     command = <<-EOT
#       echo '${tls_private_key.key.private_key_pem}' > private.pem
#       echo '${tls_private_key.key.public_key_openssh}' > public.pem
#       chmod 400 private.pem
#     EOT
#   }
# }