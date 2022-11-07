resource "aws_nat_gateway" "midterm-nat-public1-us-east-1a" {
  vpc_id = aws_vpc.midterm-vpc.id
  tags = {
      "Name" = "midterm-nat-public1-us-east-1a"
  }
}
