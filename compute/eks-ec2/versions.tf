
terraform {
  required_version = "~> 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.45.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.16.0"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 3.4.0"
    }

  }

}
