variable cidr {
  type = string
  default = "10.0.0.0/16"
}

variable name {
  type = string
}

variable public_1_cidr {
  type = string
}

variable public_2_cidr {
  type = string
}

variable private_1_cidr {
  type = string
}


variable private_2_cidr {
  type = string
}

variable "az1" {
  type = string
}

variable "az2" {
  type = string
}