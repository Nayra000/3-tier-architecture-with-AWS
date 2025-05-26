resource "aws_autoscaling_group" "asg" {
  name_prefix         = format("%s-asg",var.name_prefix) 
  desired_capacity    = var.asg_desired_capacity
  max_size            = var.asg_max_size
  min_size            = var.asg_min_size
  vpc_zone_identifier = var.subnets
  target_group_arns   = [aws_lb_target_group.tg.arn]

  launch_template {
    id      = aws_launch_template.template.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = format("%s-asg-instance",var.name_prefix) 
    propagate_at_launch = true
  }
}