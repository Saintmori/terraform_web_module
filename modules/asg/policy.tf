resource "aws_autoscaling_policy" "simple" {
  name                   = replace(local.name, "rtype", "simple-scaling-policy")
  scaling_adjustment     = 1
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 60
  autoscaling_group_name = aws_autoscaling_group.main.name
}