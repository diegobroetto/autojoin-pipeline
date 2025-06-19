resource "aws_ebs_volume" "volumes_extras" {
  for_each = var.volumes_ebs

  availability_zone = var.availability_zone
  type              = each.value.volume_type
  size              = each.value.volume_size

  tags = {
    Name = "volume-${each.key}"
  }
}