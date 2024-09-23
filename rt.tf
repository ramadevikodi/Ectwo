
resource "aws_route_table" "aw_priv_rt" {
    vpc_id = aws_vpc.aw_vpc.id
}

resource "aws_route_table" "aw_pub_rt" {
    vpc_id = aws_vpc.aw_vpc.id
}


resource "aws_route_table_association" "aw-pub-sub1-rt-association" {
    route_table_id = aws_route_table.aw_pub_rt.id
    subnet_id = aws_subnet.aw_pub_sub1.id
}

resource "aws_route_table_association" "aw-pub-sub2-rt-association" {
    route_table_id = aws_route_table.aw_pub_rt.id
    subnet_id = aws_subnet.aw_pub_sub2.id
}

resource "aws_route_table_association" "aw-priv-rt-association" {
    route_table_id = aws_route_table.aw_priv_rt.id
    subnet_id = aws_subnet.aw_priv_sub.id
}



resource "aws_route" "route-pub-rt" {
  route_table_id = aws_route_table.aw_pub_rt.id
  destination_cidr_block = var.rt_destination_cidr
  gateway_id = aws_internet_gateway.aw_gw.id

}

resource "aws_route" "route-priv1-rt" {
  route_table_id = aws_route_table.aw_priv_rt.id
  destination_cidr_block = var.rt_destination_cidr
  gateway_id = aws_internet_gateway.aw_gw.id

}
