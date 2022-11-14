output "private_key" {
  sensitive = true
  value = tls_private_key.key_pair_precision.private_key_openssh
}
