resource "aws_vpc" "finalze-vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = "true"
  
  tags {
    Name = "finalze-vpc"
  }
}

output "id" {
  value = "${aws_vpc.finalze-vpc.id}"
}