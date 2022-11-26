output "private_key" {
  sensitive = true
  value = tls_private_key.key_pair_precision.private_key_openssh
}

output "webserver_ip" {
  value = aws_instance.web.public_ip
}