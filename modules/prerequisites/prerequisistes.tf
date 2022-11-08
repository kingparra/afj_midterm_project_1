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

resource "random_pet" "webapp_bucket_petname" {
  keepers = {
    # Generate a new pet name each time we switch new seession number
    bucket_id = var.vpc_id
  }
}

resource "aws_s3_bucket" "webapp_bucket" {
  bucket = random_pet.webapp_bucket_petname.id
}

resource "aws_s3_object" "webapp_bucket_object" {
  bucket = aws_s3_bucket.webapp_bucket.id
  key = "samplepage.php"
  content = data.http.sample_page_contents.response_body
}

resource "aws_iam_role" "webapp_role" {
  name = "midterm-ec2-s3-role"
  # In order to assume the role
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "managed_policy" {
  role = aws_iam_role.webapp_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_eip" "eip" {
  # This will be associated with the nat gateway
}
