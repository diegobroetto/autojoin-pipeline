variable "so" {
  type        = string
  description = " Opções: amazon_linux, windows, ubuntu"
}

variable "ec2_name" {
  type        = string
  description = "Nome da Instâcia EC2 (TAG)"
}

variable "ec2_type" {
  type        = string
  description = "Tipo da Instância EC2"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID"
}

variable "role_ec2" {
  type        = string
  description = "Role que será anexada a EC2"
}

variable "volumes_ebs" {
  type = map(object({
    device_name = string
    volume_type = string
    volume_size = number
  }))
}

variable "volume_type" {
  type        = string
  default     = "gp3"
  description = "Tipo de EBS Volume Root"
}

variable "volume_size" {
  type        = number
  default     = 50
  description = "Tamanho de EBS Volume Root"
}

variable "tags" {
  type        = map(any)
  description = "Default tags to be used on the project"
}

variable "private_ip" {
  type        = string
  default     = null
  description = "IP Fixo Privado"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "cidr_block" {
  type        = string
  description = "CIDR Block da VPC"
}

variable "regiao" {
  type        = string
  description = "Região da AWS onde os recursos serão criados"
}

variable "availability_zone" {
  type        = string
  description = "Availability zone for the EBS volumes"
}






    