variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "domain-join-automation"
}

variable "environment" {
  description = "Environment name (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "created_by" {
  description = "Who created this infrastructure"
  type        = string
  default     = "terraform"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "enable_nat_gateway" {
  description = "Enable NAT Gateway for private subnets"
  type        = bool
  default     = true
}
variable "allowed_cidr_blocks" {
  description = "CIDR blocks allowed to access instances"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
variable "enable_flow_logs" {
  description = "If you can enable VPC Flow Logs"
  default     = false
}
