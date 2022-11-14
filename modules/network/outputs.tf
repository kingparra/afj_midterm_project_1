output "vpc_id" {
  value = aws_vpc.midterm-vpc.id
}

output "subnet_public1_id" {
  value = aws_subnet.subnet-public-1.id
}

output "subnet_public2_id" {
  value = aws_subnet.midterm-subnet-public2.id
}

output "subnet_private1_id" {
  value = aws_subnet.midterm-subnet-private1.id
}

output "subnet_private2_id" {
  value = aws_subnet.midterm-subnet-private2.id
}
