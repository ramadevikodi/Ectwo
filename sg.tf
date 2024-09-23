resource "aws_security_group" "webAWS" {
 # count=3
  #name ="Vpc_sec_AWS ${count.index}"
  name="vpc-sec-aws"
  description = "Accept incoming connections."

  ingress {
  from_port = var.sg_ingress_from_http_port
  to_port = var.sg_ingress_to_http_port
  protocol = "tcp"
  cidr_blocks = var.sg_ingress_http_cidr 
  }
  ingress {
  from_port = var.sg_ingress_from_https_port
  to_port = var.sg_ingress_to_https_port
  protocol = "tcp"
  cidr_blocks = var.sg_ingress_https_cidr
  }
  ingress {
  from_port = -1
  to_port = -1
  protocol = "icmp"
  cidr_blocks = ["0.0.0.0/0"] 
  }
  vpc_id = aws_vpc.aw_vpc.id
  tags = {
  Name = var.sg_name
  }
}
