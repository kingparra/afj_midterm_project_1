resource "aws_db_subnet_group" "dsg" {
  name = "tutorial-db-subnet-group"
  description = "Tutorial DB Subnet Group"
  # vpc: "midterm-vpc" (vpc-identifier)
  # availability_zones = ["us-east-1a", "us-east-1b"]
  subnet_ids = [ var.subnet_private2_id, var.subnet_private1_id]
}
