resource "aws_instance" "ec2_instance" {
  ami = (
    var.so == "amazon_linux" ? data.aws_ami.amazon_linux_ami.id :
    var.so == "windows" ? data.aws_ami.windows_server_ami.id :
    data.aws_ami.ubuntu_ami.id
  )
  instance_type          = var.ec2_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [aws_security_group.sg_ec2.id]
  iam_instance_profile   = var.role_ec2
  key_name               = aws_key_pair.chave_pem.key_name
  private_ip             = var.private_ip

  metadata_options {
    http_endpoint               = "enabled"
    http_tokens                 = "required"
    http_put_response_hop_limit = 1
  }

  tags = merge(
    var.tags,
    {
      Name = "${var.ec2_name}"
    }
  )

  root_block_device {
    volume_type           = var.volume_type
    volume_size           = var.volume_size
    delete_on_termination = true
  }

  user_data = var.so == "windows" ? templatefile("terraform/modules/scripts/userdata.ps1", { instance_name = var.ec2_name }) : null

}

resource "aws_volume_attachment" "ebs_attach" {
  for_each = aws_ebs_volume.volumes_extras

  device_name = var.volumes_ebs[each.key].device_name
  volume_id   = each.value.id
  instance_id = aws_instance.ec2_instance.id
}

