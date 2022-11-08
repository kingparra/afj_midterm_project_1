# Create internet gateway: igw-0648998e66b138410
resource "aws_internet_gateway" "midterm-igw" {
  vpc_id = aws_vpc.midterm-vpc.id
  tags = {
    "Name" = "midterm-igw"
  }
}
