##############################################################################
# Environment Variables
###############################################################################
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-2"
}

variable "aws_account_id" {
  description = "AWS Account ID"
  type        = string
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "vpc_id" {
  description = "Existing VPC ID"
  type        = string
}

variable "private_subnets" {
  description = "List of private subnet IDs in the existing VPC"
  type        = list(string)
}

variable "intra_subnets" {
  description = "A list of intra subnets inside the VPC have no Internet routing"
  type        = string
}

variable "project_tag" {
  description = "Project Name"
  type        = string
}

variable "environment_tag" {
  type = string
}

