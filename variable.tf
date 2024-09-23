variable "vpcid" {}
variable "priv_sub_cidr" {}
variable "priv_sub_az" {}
variable "pub_sub1_cidr" {}
variable "pub_sub1_az" {}
variable "pub_sub2_cidr" {}
variable "pub_sub2_az" {}
variable "rt_destination_cidr" {}
variable "region" {}
variable "vpc_cidr" {}
variable "vpc_name" { }
variable "igw_name" { }
variable "public_subnet_region" {}
variable "public_subnet_name" {}
variable "public_subnet_cidr" {}
variable "private_subnet_region" {}
variable "private_subnet_name" {}
variable "private_subnet_cidr" {}
variable "routetable_cidr" { }
variable "routetable_name" {}
variable "sg_name" { }
variable "sg_ingress_from_http_port" {}
variable "sg_ingress_to_http_port" { }
variable "sg_ingress_http_cidr" { }
variable "sg_ingress_from_https_port" { }
variable "sg_ingress_to_https_port" { }
variable "sg_ingress_https_cidr" {} 
variable "instance_type" {}
variable "account" {}
variable "key_name" {}
variable "subnet" {}
variable "cidr_block" {}