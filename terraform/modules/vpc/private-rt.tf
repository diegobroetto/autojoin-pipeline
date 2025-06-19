resource "aws_route_table" "private-rt" {
  count = var.enable_nat_gateway ? length(var.availability_zones) : 1

  vpc_id = aws_vpc.vpc.id

  dynamic "route" {
    for_each = var.enable_nat_gateway ? [1] : []
    content {
      cidr_block     = "0.0.0.0/0"
      nat_gateway_id = aws_nat_gateway.nat[count.index].id
    }
  }

  tags = merge(var.tags, {
    Name = "${var.project_name}-${var.environment}-rt-private-${count.index + 1}"
    Type = "RouteTable"
  })
}

resource "aws_route_table_association" "private-rt" {
  count = length(aws_subnet.private_subnet)

  subnet_id      = aws_subnet.private_subnet[count.index].id
  route_table_id = var.enable_nat_gateway ? aws_route_table.private-rt[count.index].id : aws_route_table.private-rt[0].id
}