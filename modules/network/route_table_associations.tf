# Associate route table
resource "aws_route_table_association" "midterm-rtb-public-rtbassoc-041bd566420f8e9f7" {
    # midterm-rtb-public
    route_table_id = "rtb-05017698ed8b0d36f"
    # midterm-subnet-public2-us-east-1b
    subnet_id = "subnet-03b9c803fafb82de5"
}

# Associate route table
resource "aws_route_table_association" "midterm-rtb-public-rtbassoc-09d3e79eb1af2a84a" {
    # midterm-rtb-public
    route_table_id = "rtb-05017698ed8b0d36f"
    # midterm-subnet-public1-us-east-1a
    subnet_id = "subnet-0c9e06017eba2d0fb"
}

# Associate route table
resource "aws_route_table_association" "midterm-rtb-prib8ef2aaa28ec96" {
    # midterm-rtb-private1-us-east-1a
    route_table_id = "rtb-0c878fd2064022d80"
    # midterm-subnet-private1-us-east-1a
    subnet_id = "subnet-018236422151345f7"
}

# Associate route table
resource "aws_route_table_association" "midterm-rtb-pri4ccdb4b4bc43ce" {
    # rtb-08840b3dbc414d5b1
    route_table_id = "rtb-08840b3dbc414d5b1"
    # midterm-subnet-private2-us-east-1b
    subnet_id = "subnet-0ba3d357be0deb0de"
}
