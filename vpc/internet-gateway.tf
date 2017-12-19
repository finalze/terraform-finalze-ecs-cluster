resource "aws_internet_gateway" "finalze-vpc-internet-gateway" {
  vpc_id = "${aws_vpc.finalze-vpc.id}"

  tags {
    Name = "finalze-vpc-internet-gateway"
  }
}