variable "account_details" {
  description = "Config and creds for the aws account"
  default = {
    "region"                   = "us-east-1"
    "shared_config_files"      = ["/home/chris/.aws/config"]
    "shared_credentials_files" = ["/home/chris/.aws/credentials"]
  }
}

variable "labname" {
  default = "midterm_project_1"
}

variable "session" {
  default = "2"
}