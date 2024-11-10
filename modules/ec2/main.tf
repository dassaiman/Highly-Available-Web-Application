resource "aws_launch_configuration" "app" {
  name          = "app-launch-config"
  image_id      = var.ami_id
  instance_type = var.instance_type
}

resource "aws_autoscaling_group" "app" {
  desired_capacity     = 2
  max_size             = 3
  min_size             = 1
  vpc_zone_identifier  = var.public_subnets
  launch_configuration = aws_launch_configuration.app.id
  target_group_arns    = [var.alb_target_group_arn]
}