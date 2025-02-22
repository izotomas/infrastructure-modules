#Initializes the variables needed to generate a new account
#The values vill be propagated via a tfvars file
variable "aws_region" {
  type = string
}

variable "master_account_id" {
  type        = string
  description = "The AWS account ID of the Organizations Master account"
}

variable "core_account_id" {
  type        = string
  description = "The AWS account ID of the Organizations Core account"
}

variable "shared_account_id" {
  type        = string
  description = "The AWS account ID of the Organizations Shared account (e.g. Oxygen)"
}

variable "shared_role_path" {
  type        = string
  description = "The path in which to put the IAM role for access to resources in shared account"
  default     = "/"
}

variable "access_key_master" {
  type = string
}

variable "secret_key_master" {
  type = string
}

variable "name" {
  type = string
}

variable "org_role_name" {
  type = string
}

variable "prime_role_name" {
  type = string
}

variable "email" {
  type = string
}

variable "adfs_fqdn" {
  type        = string
  description = "The fully-qualified domain name of the ADFS server, e.g. adfs.company.tld"
}

variable "context_id" {
  type        = string
  description = "The ID of the context, for which to create and AWS account"
}

variable "correlation_id" {
  type = string
}

variable "capability_root_id" {
  type = string
}

variable "capability_name" {
  type = string
}

variable "capability_id" {
  type = string
}

variable "context_name" {
  type = string
}

variable "kafka_broker" {
  type = string
}

variable "kafka_username" {
  type = string
}

variable "kafka_password" {
  type = string
}

variable "publish_message" {
  type    = bool
  default = true
}

variable "parent_id" {
  type        = string
  description = "The ID of the parent AWS Organization OU."
  default     = ""
}

variable "assume_role_arn" {
  type        = string
  description = "Optional: The AWS assume role ARN"
  default     = ""
}

variable "oidc_provider_url" {
  type        = string
  description = "The IAM OpenID Connect Provider url from the EKS production account"
  default     = ""
}

variable "oidc_provider_tag" {
  type        = string
  description = "Used for tagging the IAM OpenID Connect Provider for the capability account"
  default     = ""
}

variable "create_aws_iam_access_key" {
  type    = bool
  default = false
}
