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

resource "aws_db_instance" "default" {
  engine = "mysql"
  engine_version = "5.7.38"
  instance_class = "db.t2.micro"
  identifier =  "tutorial-db-instance"
  username = "tutorial_user"
  password = "abcde1234"
  allocated_storage = 20
  storage_type = "gp2"
  # disable storage autoscailng
  #
  # "To enable Storage Autoscaling with instances that support the feature,
  # define the max_allocated_storage argument higher than the allocated_storage
  # argument. Terraform will automatically hide differences with the
  # allocated_storage argument value if autoscaling occurs."
  #
  network_type = "IPV4"
  db_subnet_group_name = var.db_subnet_group_name
  publicly_accessible = false
  # existing vpc security groups: tutorial-db-securitygroup
  vpc_security_group_ids = [var.db_security_group_id]
  # remove other seucurity groups
  # database authentication: password
  # initial database name: midtermdb
  db_name = "midtermdb"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot = true
}

