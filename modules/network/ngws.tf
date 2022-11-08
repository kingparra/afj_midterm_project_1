resource "aws_nat_gateway" "midterm-nat-public1-us-east-1a" {
  allocation_id = "eipalloc-0a4279b682d877856"
  # midterm-subnet-public1-us-east-1a
  subnet_id = aws_subnet.subnet-0c9e06017eba2d0fb-midterm-subnet-public1-us-east-1a.id
  tags = {
      "Name" = "midterm-nat-public1-us-east-1a"
  }
}
