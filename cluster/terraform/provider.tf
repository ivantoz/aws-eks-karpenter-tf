###############################################################################
# Provider
###############################################################################
provider "aws" {
  region              = var.aws_region
  allowed_account_ids = [var.aws_account_id]

  default_tags {
    tags = {
      Project     = var.project_tag
      Environment = var.environment_tag
      Owner       = "${var.aws_account_id}" - "${var.project_tag}"
    }
  }
}
