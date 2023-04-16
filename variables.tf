variable "VPC_CIDR" {
  type = string
}

variable "REGION" {
    type = string
  
}


variable "PUBLIC_SUBNET_1_CIDR" {
  type = string
}


variable "PUBLIC_SUBNET_2_CIDR" {
  type = string
}


variable "PRIVATE_SUBNET_1_CIDR" {
  type = string
}

variable "PRIVATE_SUBNET_2_CIDR" {
  type = string
}

variable "VPC_NAME" {
   type=string 
}

variable "AMI_ID" {
  type = string
}

variable "EC2_TYPE" {
  type = string
}

variable db_pass {
  type = string
}

variable "AZ1" {
  type = string
}

variable "AZ2" {
  type = string
}