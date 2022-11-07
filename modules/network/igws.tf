# Create internet gateway: igw-0648998e66b138410
resource "aws_internet_gateway" "midterm-igw" {
  vpc_id = "vpc-0f33bee8840dc9a20"
  tags = {
    "Name" = "midterm-igw"
  }
}
