provider "aws" {
region= "us-east-1"
}
data "aws_ami" "ubuntu" {
most_recent = true
filter {
name= "name"
values= ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd-server-*"]
}
filter {
 name= "virtuvalization-type""
 values= ["hvm"]
}
owners= [" "]
}
resource "aws_instance" "example" {
 ami=data.aws_ami.ubuntu.id
instance_type= "t2.micro"
tags = {
Name=  "ubuntu-ec2-instance"
}

}

