resource "tls_private_key" "tipo_chave" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "chave_pem" {
  key_name   = var.ec2_name
  public_key = tls_private_key.tipo_chave.public_key_openssh
}

resource "local_file" "salvar_local" {
  content  = tls_private_key.tipo_chave.private_key_pem
  filename = "${var.ec2_name}.pem"

}

resource "aws_secretsmanager_secret" "chave_secrets" {
  name = var.ec2_name
}

resource "aws_secretsmanager_secret_version" "secrets_manager" {
  secret_id     = aws_secretsmanager_secret.chave_secrets.id
  secret_string = tls_private_key.tipo_chave.private_key_pem
}