resource "aws_route_table_association" "public1" {
  subnet_id         = aws_subnet.puplicsub1.id
  route_table_id = aws_route_table.publicrout.id
}

resource "aws_route_table_association" "public2" {
  subnet_id         = aws_subnet.puplicsub2.id
  route_table_id = aws_route_table.publicrout.id
}