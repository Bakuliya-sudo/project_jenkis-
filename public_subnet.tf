resource "aws_subnet" "public1" {
  vpc_id                  = "${aws_vpc.Team1.id}"
  cidr_block              = "${var.public_cidr_block1}"
  map_public_ip_on_launch = true
  availability_zone       = "${var.region}a"

  tags {
    name = "public_subnet1"
  }
}

resource "aws_subnet" "public2" {
  vpc_id                  = "${aws_vpc.Team1.id}"
  cidr_block              = "${var.public_cidr_block2}"
  map_public_ip_on_launch = true
  availability_zone       = "${var.region}b"

  tags {
    name = "public_subnet2"
  }
}

resource "aws_subnet" "public3" {
  vpc_id                  = "${aws_vpc.Team1.id}"
  cidr_block              = "${var.public_cidr_block3}"
  map_public_ip_on_launch = true
  availability_zone       = "${var.region}c"

  tags {
    name = "public_subnet3"
  }
}
