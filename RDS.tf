resource "aws_db_instance" "rds" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "mark"
  password             = "Hello123456"
  skip_final_snapshot  = true
  db_subnet_group_name = aws_db_subnet_group.group-sub.name
  vpc_security_group_ids  = [aws_security_group.security-db.id]
}