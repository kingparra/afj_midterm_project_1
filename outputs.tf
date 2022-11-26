output "private_key" {
  sensitive = true
  value = module.ec2_instance.private_key
}

output "webserver_ip" {
  value = module.ec2_instance.webserver_ip
}