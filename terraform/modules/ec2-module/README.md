## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_local"></a> [local](#provider\_local) | n/a |
| <a name="provider_tls"></a> [tls](#provider\_tls) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ebs_volume.volumes_extras](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ebs_volume) | resource |
| [aws_instance.ec2_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_key_pair.chave_pem](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [aws_secretsmanager_secret.chave_secrets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.secrets_manager](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |
| [aws_security_group.sg_ec2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_volume_attachment.ebs_attach](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/volume_attachment) | resource |
| [local_file.salvar_local](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [tls_private_key.tipo_chave](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [aws_ami.amazon_linux_ami](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_ami.ubuntu_ami](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_ami.windows_server_ami](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | Availability zone for the EBS volumes | `string` | n/a | yes |
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | CIDR Block da VPC | `string` | n/a | yes |
| <a name="input_ec2_name"></a> [ec2\_name](#input\_ec2\_name) | Nome da Instâcia EC2 (TAG) | `string` | n/a | yes |
| <a name="input_ec2_type"></a> [ec2\_type](#input\_ec2\_type) | Tipo da Instância EC2 | `string` | n/a | yes |
| <a name="input_private_ip"></a> [private\_ip](#input\_private\_ip) | IP Fixo Privado | `string` | `null` | no |
| <a name="input_regiao"></a> [regiao](#input\_regiao) | Região da AWS onde os recursos serão criados | `string` | n/a | yes |
| <a name="input_role_ec2"></a> [role\_ec2](#input\_role\_ec2) | Role que será anexada a EC2 | `string` | n/a | yes |
| <a name="input_so"></a> [so](#input\_so) | Opções: amazon\_linux, windows, ubuntu | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Subnet ID | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to be used on the project | `map(any)` | n/a | yes |
| <a name="input_volume_size"></a> [volume\_size](#input\_volume\_size) | Tamanho de EBS Volume Root | `number` | `50` | no |
| <a name="input_volume_type"></a> [volume\_type](#input\_volume\_type) | Tipo de EBS Volume Root | `string` | `"gp3"` | no |
| <a name="input_volumes_ebs"></a> [volumes\_ebs](#input\_volumes\_ebs) | n/a | <pre>map(object({<br/>    device_name = string<br/>    volume_type = string<br/>    volume_size = number<br/>  }))</pre> | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID | `string` | n/a | yes |

## Outputs

No outputs.
