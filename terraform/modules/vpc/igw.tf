resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = merge(var.tags, {
    Name = "${var.project_name}-${var.environment}-igw"
    Type = "InternetGateway"
  })
}