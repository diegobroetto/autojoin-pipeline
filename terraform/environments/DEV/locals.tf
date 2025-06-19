locals {
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
    CreatedBy   = var.created_by
  }

  name_prefix = "${var.project_name}-${var.environment}"
}
