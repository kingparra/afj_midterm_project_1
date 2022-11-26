
# Associate route table
resource "aws_route_table_association" "midterm-rtb-public1" {
    route_table_id = aws_route_table.midterm-rtb-public.id
    subnet_id = aws_subnet.midterm-subnet-public-1.id
}

# Associate route table
resource "aws_route_table_association" "midterm-rtb-public2" {
    route_table_id = aws_route_table.midterm-rtb-public.id
    subnet_id = aws_subnet.midterm-subnet-public2.id
}

# Associate route table
resource "aws_route_table_association" "midterm-rtb-priavate1" {
    route_table_id = aws_route_table.midterm-rtb-private1-us-east-1a.id
    subnet_id = aws_subnet.midterm-subnet-private1.id
}

# Associate route table
resource "aws_route_table_association" "midterm-rtb-private2" {
    route_table_id = aws_route_table.midterm-rtb-private2-us-east-1b.id
    subnet_id = aws_subnet.midterm-subnet-private2.id
}
