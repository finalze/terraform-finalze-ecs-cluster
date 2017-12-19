resource "aws_route_table" "finalze-vpc-route-table" {
  vpc_id = "${aws_vpc.finalze-vpc.id}"

  route {
    cidr_block = "10.0.0.0/0"
    gateway_id = "${aws_internet_gateway.finalze-vpc-internet-gateway.id}"
  }

  tags {
    Name = "finalze-vpc-route-table"
  }
}

resource "aws_route_table_association" "finalze-vpc-route-table-association1" {
  subnet_id      = "${aws_subnet.finalze-vpc-subnet1.id}"
  route_table_id = "${aws_route_table.finalze-vpc-route-table.id}"
}

resource "aws_route_table_association" "finalze-vpc-route-table-association2" {
  subnet_id      = "${aws_subnet.finalze-vpc-subnet2.id}"
  route_table_id = "${aws_route_table.finalze-vpc-route-table.id}"
}