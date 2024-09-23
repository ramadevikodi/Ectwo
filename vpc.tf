resource "aws_vpc" "aw_vpc" {
cidr_block = var.vpcid

tags = {
    Name = "aw_vpc"
  }

}

resource "aws_internet_gateway" "aw_gw" {
    vpc_id = aws_vpc.aw_vpc.id

}

resource "aws_eip" "ip" {
}

resource "aws_nat_gateway" "aw_nat" {
  allocation_id = aws_eip.ip.id
  subnet_id     = aws_subnet.aw_pub_sub1.id

}
