resource "aws_cloudwatch_log_group" "vpc_flow_logs" {
  count = var.enable_flow_logs ? 1 : 0

  name              = "/aws/vpc/flowlogs/${var.project_name}-${var.environment}"
  retention_in_days = 14

  tags = merge(var.tags, {
    Name = "${var.project_name}-${var.environment}-vpc-flowlogs"
    Type = "LogGroup"
  })
}