# Application Load Balancer
resource "aws_lb" "lb" {
  name               = format("%s-alb" ,var.name_prefix)
  internal           = var.isInternal
  load_balancer_type = "application"
  subnets            = var.subnets
  security_groups    = var.lb_SG

  tags = var.tags
}

# Listener
resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.lb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg.arn
  }
}
