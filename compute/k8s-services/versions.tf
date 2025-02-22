
terraform {
  required_version = ">= 1.3.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.63.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.19.0"
    }

    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "~> 1.14.0"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.9.0"
    }

    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.37.0"
    }

    github = {
      source  = "integrations/github"
      version = "~> 5.20.0"
    }

    flux = {
      source  = "fluxcd/flux"
      version = "~> 0.25.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.0"
    }
  }

}
