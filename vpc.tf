resource "aws_vpc" "Team1" {
  cidr_block = "${var.cidr_block}"

  tags {
    name = "VPC-jenkins"
  }
}
