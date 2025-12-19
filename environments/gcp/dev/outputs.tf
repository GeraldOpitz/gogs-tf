output "vpc_name" {
  value = module.networking.vpc_name
}

output "app_subnet" {
  value = module.networking.app_subnet_name
}

output "vm_name" {
  value = module.gogs_app.name
}

output "vm_internal_ip" {
  value = module.gogs_app.internal_ip
}

output "cloudsql_instance_name" {
  value = module.gogs_db.instance_name
}

output "cloudsql_private_ip" {
  value = module.gogs_db.private_ip
}
