resource "aws_flow_log" "vpc_flow_logs" {
  count = var.enable_flow_logs ? 1 : 0

  iam_role_arn = aws_iam_role.flow_logs_iam_role[0].arn
  log_destination = aws_cloudwatch_log_group.vpc_flow_logs[0].arn
  traffic_type    = "ALL"
  vpc_id          = aws_vpc.vpc.id
}

