output "eip_id" {
  value = aws_eip.eip.id
}

output "role_name" {
  value = aws_iam_role.webapp_role.name
}
