resource "aws_elasticache_cluster" "ec-redis" {
  cluster_id           = "my-redis"
  engine               = "redis"
  node_type            = "cache.t2.micro"
  num_cache_nodes      = 1
  engine_version       = "3.2.10"
  port                 = 6379
  subnet_group_name = aws_elasticache_subnet_group.group-cash.name
  security_group_ids   = [aws_security_group.security-db.id]
}
