resource "aws_nat_gateway" "nat_gw" {
  allocation_id = "${aws_eip.eip.id}"
  subnet_id     = "${aws_subnet.public1.id}"
}

resource "aws_route_table" "rt_ngw" {
  vpc_id = "${aws_vpc.Team1.id}"

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.nat_gw.id}"
  }

  tags {
    name = "rt_ngw"
  }
}

# resource "aws_route_table_association" "rt_ngw" {
#  subnet_id      = "${aws_subnet.private1.id}"
#  route_table_id = "${aws_nat_gateway.rt_ngw.id}"
# }


#  resource "aws_route_table_association" "e" {
#   subnet_id      = "${aws_subnet.private2.id}"
#   route_table_id = "${aws_nat_gateway.rt_ngw.id}"
#  }


#  resource "aws_route_table_association" "f" {
#   subnet_id      = "${aws_subnet.private3.id}"
#   route_table_id = "${aws_nat_gateway.rt_ngw.id}"
#  }

