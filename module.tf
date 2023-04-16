module "my_network" {
  source = "./network"
 cidr=var.VPC_CIDR
 name=var.VPC_NAME
 public_1_cidr=var.PUBLIC_SUBNET_1_CIDR
 public_2_cidr=var.PUBLIC_SUBNET_2_CIDR
 private_1_cidr=var.PRIVATE_SUBNET_1_CIDR
 private_2_cidr=var.PRIVATE_SUBNET_2_CIDR
 az1 = var.AZ1
 az2 = var.AZ2
}