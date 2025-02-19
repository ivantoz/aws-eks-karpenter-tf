###############################################################################
# Provider
###############################################################################
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region              = var.region
  allowed_account_ids = [var.aws_account_id]
}



###############################################################################
# S3 Bucket
###############################################################################
resource "aws_s3_bucket" "state" {
  bucket        = "terraform-${var.project_tag}-${terraform.workspace}-backend-bucket"
  force_destroy = true

}
