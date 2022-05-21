resource "aws_subnet" "puplicsub1" {
  availability_zone = var.availability_zone1 #"us-east-1a"
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.public_subnet_cidr_1  #"10.0.1.0/24"

  tags = {
    Name = var.public_subnet_1
  }
}

resource "aws_subnet" "puplicsub2" {
  availability_zone = var.availability_zone2 #"us-east-1b"
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.public_subnet_cidr_2 #"10.0.2.0/24"

  tags = {
    Name = var.public_subnet_2
  }
}