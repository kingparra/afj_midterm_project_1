# Create subnet: subnet-0c9e06017eba2d0fb
resource "aws_subnet" "subnet-0c9e06017eba2d0fb-midterm-subnet-public1-us-east-1a" {
    vpc_id                  = aws_vpc.midterm-vpc.id
    cidr_block              = "10.0.0.0/24"
    availability_zone       = "us-east-1a"
    map_public_ip_on_launch = false
    tags = {
        "Name" = "midterm-subnet-public1-us-east-1a"
    }
}

# Create subnet: subnet-03b9c803fafb82de5
resource "aws_subnet" "subnet-03b9c803fafb82de5-midterm-subnet-public2-us-east-1b" {
    vpc_id                  = aws_vpc.midterm-vpc.id
    cidr_block              = "10.0.1.0/24"
    availability_zone       = "us-east-1b"
    map_public_ip_on_launch = false
    tags = {
        "Name" = "midterm-subnet-public2-us-east-1b"
    }
}

# Create subnet: subnet-018236422151345f7
resource "aws_subnet" "subnet-018236422151345f7-midterm-subnet-private1-us-east-1a" {
    vpc_id                  = aws_vpc.midterm-vpc.id
    cidr_block              = "10.0.2.0/24"
    availability_zone       = "us-east-1a"
    map_public_ip_on_launch = false

    tags = {
        "Name" = "midterm-subnet-private1-us-east-1a"
    }
}


# Create subnet: subnet-0ba3d357be0deb0de
resource "aws_subnet" "subnet-0ba3d357be0deb0de-midterm-subnet-private2-us-east-1b" {
    vpc_id                  = aws_vpc.midterm-vpc.id
    cidr_block              = "10.0.3.0/24"
    availability_zone       = "us-east-1b"
    map_public_ip_on_launch = false

    tags = {
        "Name" = "midterm-subnet-private2-us-east-1b"
    }
}
