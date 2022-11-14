output "private_key" {
  sensitive = true
  value = module.ec2_instance.private_key
}
