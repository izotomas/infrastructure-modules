#Initializes the variables needed to generate a new account
#The values vill be propagated via a tfvars file
variable "aws_region" {
  type = string
}

variable "name" {
  type = string
}

variable "org_role_name" {
  type = string
}

variable "email" {
  type = string
}

variable "cloudtrail_local_s3_bucket" {
  type    = string
  default = ""
}

variable "create_cloudtrail_s3_bucket" {
  type    = bool
  default = false
}

variable "cloudtrail_central_s3_bucket" {
  type = string
}

variable "adfs_fqdn" {
  type        = string
  description = "The fully-qualified domain name of the ADFS server, e.g. adfs.company.tld"
}

variable "cloudadmin_iam_role_name" {
  description = "Name of IAM role"
  type        = string
}

variable "auditor_iam_role_name" {
  description = "Name of IAM role"
  type        = string
}
