# Create route table: rtb-05017698ed8b0d36f
resource "aws_route_table" "midterm-rtb-public" {
    vpc_id     = "vpc-0cda3a7e081e4b0f5"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "igw-020137cb7a73cf3f2"
    }
    tags = {
        "Name" = "midterm-rtb-public"
    }
}

# Create route table: rtb-0c878fd2064022d80
resource "aws_route_table" "midterm-rtb-private1-us-east-1a" {
    vpc_id     = "vpc-0f33bee8840dc9a20"
    route {
        cidr_block = "0.0.0.0/0"
    }
    tags = {
        "Name" = "midterm-rtb-private1-us-east-1a"
    }
}

# Create route table: rtb-08840b3dbc414d5b1
resource "aws_route_table" "midterm-rtb-private2-us-east-1b" {
    vpc_id     = "vpc-0cda3a7e081e4b0f5"
    route {
        cidr_block = "0.0.0.0/0"
    }
    tags = {
        "Name" = "midterm-rtb-private2-us-east-1b"
    }
}
