# Associate route table
resource "aws_route_table_association" "midterm-rtb-public-rtbassoc-041bd566420f8e9f7" {
    route_table_id = aws_route_table.midterm-rtb-public.id
    subnet_id = aws_subnet.subnet-03b9c803fafb82de5-midterm-subnet-public2-us-east-1b.id
}

# Associate route table
resource "aws_route_table_association" "midterm-rtb-public-rtbassoc-09d3e79eb1af2a84a" {
    route_table_id = aws_route_table.midterm-rtb-public.id
    subnet_id = aws_subnet.subnet-0c9e06017eba2d0fb-midterm-subnet-public1-us-east-1a.id
}

# Associate route table
resource "aws_route_table_association" "midterm-rtb-prib8ef2aaa28ec96" {
    route_table_id = aws_route_table.midterm-rtb-private1-us-east-1a.id
    subnet_id = aws_subnet.subnet-018236422151345f7-midterm-subnet-private1-us-east-1a.id
}

# Associate route table
resource "aws_route_table_association" "midterm-rtb-pri4ccdb4b4bc43ce" {
    route_table_id = aws_route_table.midterm-rtb-private2-us-east-1b.id
    subnet_id = aws_subnet.subnet-0ba3d357be0deb0de-midterm-subnet-private2-us-east-1b.id
}
