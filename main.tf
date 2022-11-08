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

# 1 Prerequistes
################
module "prerequistes" {
  labname = var.labname
  session = var.session
  vpc_id = "midterm-vpc"
  source = "./modules/prerequisites"
}

# 2 Create a vpc with private and public subnets
################################################
module "network" {
  account_details = var.account_details
  labname = var.labname
  session = var.session
  source = "./modules/network"
}

# 3 Create a vpc security group for a public web server
#######################################################
# module "vpcsg" {
#   source = "./modules/vpcsg/"
# }

# 4 Create a vpc security group for a private DB instance
#########################################################
# module "db_security_group" {
#   source = "./modules/db_security_group/db_security_group.tf"
# }

# 5 Create a DB subnet group
############################
# module "db_subnet_group" {
#   source = "./modules/db_subnet_group/db_subnet_group.tf"
# }

# 6 Now lets create a DB instance
#################################

# 7 Now create an ec2 instance and install a web server
#######################################################


# 8 Connect your apache web server to your db instance
######################################################
