output "vm_public_ip" {
  value = module.gogs_app.public_ip
}

output "vm_name" {
  value = module.gogs_app.instance_name
}
