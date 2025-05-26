resource "aws_launch_template" "template" {
  
  name_prefix = format("%s-lt", var.name_prefix)
  image_id      = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  user_data = var.user_data

  vpc_security_group_ids = var.template_sg

  tag_specifications {
    resource_type = "instance"
    tags = merge(var.tags, {
      Name = format("%s-tier" ,var.name_prefix)
    })
  }

  #ensures that a new resource is created before the old one is destroyed
  lifecycle {                       
    create_before_destroy = true
  }
}
