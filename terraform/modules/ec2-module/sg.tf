resource "aws_security_group" "sg_ec2" {
  name        = "${var.ec2_name}-sg"
  description = "Security group ${var.ec2_name}-sg"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.cidr_block]
    description = "Permite todo o trafego da VPC"
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.132.5.0/24"]
    description = "Rede Trustee"
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["10.132.5.0/24"]
    description = "Acesso HTTPS rede Trustee"
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["10.132.5.0/24"]
    description = "Acesso HTTP rede Trustee"
  }

  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["10.132.5.0/24"]
    description = "Acesso RDP rede Trustee"
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["10.132.6.0/24"]
    description = "Acesso HTTP wifi Trustee"
  }
  
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["10.132.6.0/24"]
    description = "Acesso HTTPs wifi Trustee"
  }

  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["10.203.2.20/32"]
    description = "Acesso Guacamole"
  }

  ingress {
    from_port   = 10050
    to_port     = 10050
    protocol    = "tcp"
    cidr_blocks = ["10.203.2.20/32"]
    description = "Servidor Zabbix"
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Permite todo trafego de saida"
  }
}


