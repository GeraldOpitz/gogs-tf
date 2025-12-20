output "endpoint" {
  description = "RDS endpoint"
  value       = aws_db_instance.gogs_db.endpoint
}

output "port" {
  description = "RDS port"
  value       = aws_db_instance.gogs_db.port
}

output "db_name" {
  description = "Database name"
  value       = aws_db_instance.gogs_db.db_name
}
