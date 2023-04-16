# terraform-task
## Requirments
Networking
1- create vpc
2- create internet gateway
3- create public route table
4- create private route table
5- create public route
6- attach public route table to subnets
7- create security group which allow ssh from 0.0.0.0/0
8- create security group that allow ssh and port 3000 from vpc cidr only
9- create ec2(bastion) in public subnet with security group from 7
10- create ec2(application) private subnet with security group from 8
11-create two workspaces dev and prod
12-create two variable definition files(.tfvars) for the two environments
13-separate network resources into network module
14-apply your code to create two environments one in us-east-1 and eu-central-1
15-run local-exec provisioner to print the public_ip of bastion ec2
16- create rds
17- create elastic cache