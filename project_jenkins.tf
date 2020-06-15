resource "aws_vpc" "team1" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "dedicated"

  tags = {
    Name = "team1"
  }
}