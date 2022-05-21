resource "aws_route_table_association" "private1" {
  subnet_id         = aws_subnet.privsub1.id
  route_table_id = aws_route_table.privtabl1.id
}

resource "aws_route_table_association" "private2" {
  subnet_id         = aws_subnet.privsub2.id
  route_table_id = aws_route_table.privtabl2.id
}