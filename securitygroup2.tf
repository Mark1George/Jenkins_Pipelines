resource "aws_security_group" "group2" {
  name        = "private"
  description = "public"
  vpc_id      = module.network.myvpc_id 

  ingress {
    description      = "ssh "
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [module.network.vpc_cider] 
  }

  ingress {
    description      = "custom "
    from_port        = 3000
    to_port          = 3000
    protocol         = "tcp"
    cidr_blocks      = [module.network.vpc_cider] 
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "${var.workSpace}private"
  }
}

resource "aws_security_group" "security-db" {
  name        = "security-db"
  vpc_id      = module.network.myvpc_id

  ingress {
    description      = "all from vpc"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = [module.network.vpc_cider]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "${var.workSpace}-security-db"
  }
}