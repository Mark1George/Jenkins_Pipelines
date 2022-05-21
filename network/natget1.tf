resource "aws_nat_gateway" "nat1" {
  allocation_id = aws_eip.elastic-ip1.id
  subnet_id     = aws_subnet.puplicsub1.id

  tags = {
    Name = "${var.workSpace}gw NAT1"
  }

}

resource "aws_nat_gateway" "nat2" {
  allocation_id = aws_eip.elastic-ip2.id
  subnet_id     = aws_subnet.puplicsub2.id

  tags = {
    Name = "${var.workSpace}gw NAT2"
  }

}