
terraform {
  required_version = "~> 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.58.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.18.0"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.0"
    }

  }

}
