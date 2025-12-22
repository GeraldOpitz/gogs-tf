output "ec2_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = module.gogs_app.public_ip
}

output "ec2_ssh_connection" {
  description = "SSH connection command"
  value       = "ssh -i ~/.ssh/my-ssh-key.pem ubuntu@${module.gogs_app.public_ip}"
}

output "rds_endpoint" {
  description = "RDS endpoint"
  value       = module.gogs_rds.endpoint
}

output "rds_port" {
  description = "RDS port"
  value       = module.gogs_rds.port
}
