# Create route table: rtb-05017698ed8b0d36f
resource "aws_route_table" "midterm-rtb-public" {
    vpc_id     = aws_vpc.midterm-vpc.id
    route {
        cidr_block = "0.0.0.0/24"
        gateway_id = aws_internet_gateway.midterm-igw.id
    }
    tags = {
        "Name" = "midterm-rtb-public"
    }
}

# Create route table: rtb-0c878fd2064022d80
resource "aws_route_table" "midterm-rtb-private1-us-east-1a" {
    vpc_id     = aws_vpc.midterm-vpc.id
    route {
        cidr_block = "0.0.0.0/24"
        gateway_id = aws_nat_gateway.midterm-nat-public1-us-east-1a.id
    }
    tags = {
        "Name" = "midterm-rtb-private1-us-east-1a"
    }
}

# Create route table: rtb-08840b3dbc414d5b1
resource "aws_route_table" "midterm-rtb-private2-us-east-1b" {
    vpc_id     = aws_vpc.midterm-vpc.id
    route {
        cidr_block = "0.0.0.0/24"
        gateway_id = aws_nat_gateway.midterm-nat-public1-us-east-1a.id
    }
    tags = {
        "Name" = "midterm-rtb-private2-us-east-1b"
    }
}
