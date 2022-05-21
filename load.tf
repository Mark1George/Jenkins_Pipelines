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