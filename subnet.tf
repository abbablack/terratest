resource "aws_subnet" "public_1a" {
  vpc_id            = "${aws_vpc.dev.id}"
  availability_zone = "us-east-2a"
  cidr_block        = "6.0.1.0/24"

  tags {
    Name = "user06-public-1a"
  }
}

resource "aws_subnet" "private_1a" {
  vpc_id            = "${aws_vpc.dev.id}"
  availability_zone = "us-east-2a"
  cidr_block        = "6.0.101.0/24"

  tags {
    Name = "user06-private-1a"
  }
}
resource "aws_subnet" "public_1c" {
  vpc_id            = "${aws_vpc.dev.id}"
  availability_zone = "us-east-2c"
  cidr_block        = "6.0.2.0/24"

  tags {
    Name = "user06-public-1c"
  }
}

resource "aws_subnet" "private_1c" {
  vpc_id            = "${aws_vpc.dev.id}"
  availability_zone = "us-east-2c"
  cidr_block        = "6.0.102.0/24"

  tags {
    Name = "user06-private-1c"
  }
}
