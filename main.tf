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
  vpc_id = module.network.vpc_id
  account_details = var.account_details
  source = "./modules/prerequisites"
}

# 2 Create a vpc with private and public subnets
################################################
module "network" {
  labname = var.labname
  session = var.session
  eip_id = module.prerequistes.eip_id
  account_details = var.account_details
  source = "./modules/network"
}

# 3 Create a vpc security group for a public web server
#######################################################
module "webserver_security_group" {
  vpc_id = module.network.vpc_id
  source = "./modules/webserver_security_group"
}

# 4 Create a vpc security group for a private DB instance
#########################################################
module "db_security_group" {
  vpc_id = module.network.vpc_id
  webserver_security_group_id = module.webserver_security_group.webserver_security_group_id
  source = "./modules/db_security_group"
}

# 5 Create a DB subnet group
############################
module "db_subnet_group" {
  subnet_private1_id = module.network.subnet_private1_id
  subnet_private2_id = module.network.subnet_private2_id
  source = "./modules/db_subnet_group"
}

## 6 Now lets create a DB instance
##################################
module "db_instance" {
  subnet_private1_id = module.network.subnet_private1_id
  subnet_private2_id = module.network.subnet_private2_id
  db_security_group_id = module.db_security_group.db_security_group_id
  source = "./modules/db_instance"
}

# 7 Now create an ec2 instance and install a web server
#######################################################
module "ec2_instance" {
  webserver_security_group_id = module.webserver_security_group.webserver_security_group_id
  subnet_public1_id = module.network.subnet_public1_id
  role_name = module.prerequistes.role_name
  vpc_id = module.network.vpc_id
  source = "./modules/ec2_instance"
}


# 8 Connect your apache web server to your db instance
######################################################
# This part I'll do manually.
