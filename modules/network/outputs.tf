output "vpc_id" {
  value = aws_vpc.midterm-vpc.id
}

output "subnet_public1_id" {
  value = aws_subnet.subnet-0c9e06017eba2d0fb-midterm-subnet-public1-us-east-1a.id
}

output "subnet_public2_id" {
  value = aws_subnet.subnet-03b9c803fafb82de5-midterm-subnet-public2-us-east-1b.id
}

output "subnet_private1_id" {
  value = aws_subnet.subnet-018236422151345f7-midterm-subnet-private1-us-east-1a.id
}

output "subnet_private2_id" {
  value = aws_subnet.subnet-0ba3d357be0deb0de-midterm-subnet-private2-us-east-1b.id
}
