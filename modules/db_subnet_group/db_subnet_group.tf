resource "aws_db_subnet_group" "dsg" {
  name = "tutorial-db-subnet-group"
  description = "Tutorial DB Subnet Group"
  # vpc: "midterm-vpc" (vpc-identifier)
  # availability_zones = ["us-east-1a", "us-east-1b"]
  subnet_ids = [ aws_subnet.subnet-023f4bbe3d8e5dac8-midterm-subnet-private2-us-east-1b.id, aws_subnet.subnet-00e517c733f3793c7-midterm-subnet-private1-us-east-1a.id]
}
