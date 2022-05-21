resource "aws_route_table" "privtabl2" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat2.id
  }

  
  tags = {
    Name = "${var.workSpace}privatetable1"
  }
}