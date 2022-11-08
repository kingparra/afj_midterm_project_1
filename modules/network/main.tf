terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    # To generate the ssh kepair
    tls = {
      source  = "hashicorp/tls"
      version = "4.0.3"
    }
    # To download the website site content
    http = {
      source = "hashicorp/http"
      version = "3.2.0"
    }
    # To name the bucket
    random = {
      source = "hashicorp/random"
      version = "3.4.3"
    }
  }
}

provider "aws" {
  region                   = var.account_details.region
  shared_config_files      = var.account_details.shared_config_files
  shared_credentials_files = var.account_details.shared_credentials_files
  default_tags {
    tags = {
      Lab = var.labname
      Session = var.session
    }
  }
}
