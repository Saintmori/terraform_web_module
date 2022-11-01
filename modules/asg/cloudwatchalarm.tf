resource "aws_cloudwatch_metric_alarm" "cpu_alarm" {
  alarm_name          = replace(local.name, "rtype", "cpu-alarms")
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "120"
  statistic           = "Average"
  threshold           = "80"
  tags                = merge(local.common_tags, { Name = replace(local.name, "rtype", "cpu-alarms") })

  dimensions = {
    AutoScalingGroupName = aws_autoscaling_group.main.name
  }

  alarm_description = "This metric monitors ec2 cpu utilization and triggers auto scaling to add one instance"
  alarm_actions     = [aws_autoscaling_policy.simple.arn]
}