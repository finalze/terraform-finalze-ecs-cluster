resource "aws_subnet" "finalze-vpc-subnet1" {
    vpc_id     = "${aws_vpc.finalze-vpc.id}"
    cidr_block = "10.0.0.0/24"
    availability_zone = "us-east-1a"

    tags {
        Name = "finalze-vpc-subnet"
    }
}

resource "aws_subnet" "finalze-vpc-subnet2" {
    vpc_id     = "${aws_vpc.finalze-vpc.id}"
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1b"

    tags {
        Name = "finalze-vpc-subnet"
    }
}

output "subnet1-id" {
  value = "${aws_subnet.finalze-vpc-subnet1.id}"
}

output "subnet2-id" {
  value = "${aws_subnet.finalze-vpc-subnet2.id}"
}