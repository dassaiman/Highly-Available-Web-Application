output "ec2_instance_ids" {
  value = aws_autoscaling_group.app.id
}