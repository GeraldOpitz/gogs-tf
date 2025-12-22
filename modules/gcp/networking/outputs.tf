output "vpc_id" {
  description = "VPC self link"
  value       = google_compute_network.this.id
}

output "vpc_name" {
  description = "VPC name"
  value       = google_compute_network.this.name
}

output "app_subnet_name" {
  description = "App subnet name"
  value       = google_compute_subnetwork.app.name
}

output "db_subnet_name" {
  description = "DB subnet name"
  value       = google_compute_subnetwork.db.name
}

output "private_service_connection" {
  value = google_service_networking_connection.private_vpc_connection
}
