resource "aws_eip" "elastic-ip1" {
  vpc              = true
  tags = {
    Name = "${var.workSpace}elastic-1"
  }
}

resource "aws_eip" "elastic-ip2" {
  vpc              = true
  tags = {
    Name = "${var.workSpace}elastic-2"
  }
}