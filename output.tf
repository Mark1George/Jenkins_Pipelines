output "publicEc2" {
  value = aws_instance.pubec2.public_ip
}


output "priveteEc2" {
  value = aws_instance.privc2.private_ip
}

output "sshKey" {
  value = tls_private_key.private_key_pair.private_key_pem
  sensitive = true

}
output "rdsHost" {
  value = aws_db_instance.rds.address

}
output "rdsPort" {
  value = aws_db_instance.rds.port

}
output "redisHost" {
  value = aws_elasticache_cluster.ec-redis.cache_nodes[0].address

}

output "redisPort" {
  value = aws_elasticache_cluster.ec-redis.port

}
