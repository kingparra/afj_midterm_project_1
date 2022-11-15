resource "aws_nat_gateway" "midterm-nat-public1-us-east-1a" {
  allocation_id = var.eip_id
  # midterm-subnet-public1-us-east-1a
  subnet_id = aws_subnet.midterm-subnet-public-1.id
  tags = {
      "Name" = "midterm-nat-public1-us-east-1a"
  }
}
