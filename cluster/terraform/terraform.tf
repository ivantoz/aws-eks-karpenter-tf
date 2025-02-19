###############################################################################
# Backend
###############################################################################
terraform {
  backend "s3" {
    bucket       = "terraform-${var.project_tag}-${terraform.workspace}-backend-bucket"
    region       = var.region
    key          = "tf/terraform-${var.project_tag}-backend/eks/terraform.tfstate"
    encrypt      = true
    use_lockfile = true #S3 native locking
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
