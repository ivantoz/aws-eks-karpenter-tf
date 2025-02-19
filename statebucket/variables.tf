##############################################################################
# Environment Variables
###############################################################################
variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-2"
}

variable "aws_account_id" {
  description = "AWS Account ID"
  type        = string
}

variable "project_tag" {
  description = "Project Name"
  type        = string
}
