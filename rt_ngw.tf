resource "aws_route_table_association" "nat_gtw1" {
  subnet_id      = "${aws_subnet.private1.id}"
  route_table_id = "${aws_route_table.rt_ngw.id}"
}

resource "aws_route_table_association" "nat_gtw2" {
  subnet_id      = "${aws_subnet.private2.id}"
  route_table_id = "${aws_route_table.rt_ngw.id}"
}

resource "aws_route_table_association" "nat_gtw3" {
  subnet_id      = "${aws_subnet.private3.id}"
  route_table_id = "${aws_route_table.rt_ngw.id}"
}
