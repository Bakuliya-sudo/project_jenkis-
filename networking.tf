resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.Team1.id}"
} 

resource "aws_route_table" "public_r" {
  vpc_id = "${aws_vpc.Team1.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
}
resource "aws_route_table_association" "a" {
  subnet_id      = "${aws_subnet.public1.id}"
  route_table_id = "${aws_route_table.public_r.id}"
}
resource "aws_route_table_association" "b" {
  subnet_id      = "${aws_subnet.public2.id}"
  route_table_id = "${aws_route_table.public_r.id}"
}
resource "aws_route_table_association" "c" {
  subnet_id      = "${aws_subnet.public3.id}"
  route_table_id = "${aws_route_table.public_r.id}"
}

 resource "aws_eip" "nat" {
   depends_on  = ["aws_internet_gateway.gw"]
   vpc  = true
 }
 resource "aws_nat_gateway" "nat_gw" {
   allocation_id = "${aws_eip.nat.id}"
   subnet_id     = "${aws_subnet.public1.id}"
   
 }
 resource "aws_route_table" "private_rt" {
  vpc_id = "${aws_vpc.Team1.id}"
  route {
     cidr_block = "0.0.0.0/0"
     nat_gateway_id = "${aws_nat_gateway.nat_gw.id}"
   }

 }
 resource "aws_route_table_association" "d" {
  subnet_id      = "${aws_subnet.private1.id}"
  route_table_id = "${aws_nat_gateway.private_rt.id}"
 }

 resource "aws_route_table_association" "e" {
  subnet_id      = "${aws_subnet.private2.id}"
  route_table_id = "${aws_nat_gateway.private_rt.id}"
 }

 resource "aws_route_table_association" "f" {
  subnet_id      = "${aws_subnet.private3.id}"
  route_table_id = "${aws_nat_gateway.private_rt.id}"
 }