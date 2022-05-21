resource "aws_lb_target_group" "NLB_target_group" {
  name        = "NLB-TG"
  port        = 3000
  protocol    = "TCP"
  vpc_id      = module.network.myvpc_id
  }



resource "aws_lb_target_group_attachment" "one" {
  target_group_arn = aws_lb_target_group.NLB_target_group.arn
  target_id        = aws_instance.privc2.id
  port             = 3000
}
resource "aws_lb" "NLB" {
  name               = "NLB"
  internal           = false
  load_balancer_type = "network"
  subnets            = [module.network.public_sub_1id , module.network.public_sub_2id]
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.NLB.arn
  port              = "80"
  protocol          = "TCP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.NLB_target_group.arn
  }
}
root@200f65969f14:/var/jenkins_home/workspace/terra# cat output.tf
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
