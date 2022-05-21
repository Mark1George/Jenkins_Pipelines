resource "aws_subnet" "privsub1" {
  availability_zone = var.availability_zone1 #"us-east-1a"
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.private_subnet_cidr_1 #"10.0.3.0/24"

  tags = {
    Name = var.private_subnet_1
  }
}

resource "aws_subnet" "privsub2" {
  availability_zone = var.availability_zone2#"us-east-1b"
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.private_subnet_cidr_2 #"10.0.4.0/24"

  tags = {
    Name = var.private_subnet_2
  }
}