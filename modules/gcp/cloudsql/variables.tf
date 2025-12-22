variable "name" {
  description = "Cloud SQL instance name"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "db_version" {
  description = "PostgreSQL version"
  type        = string
  default     = "POSTGRES_15"
}

variable "tier" {
  description = "Machine tier for Cloud SQL"
  type        = string
  default     = "db-f1-micro"
}

variable "vpc_id" {
  description = "VPC self link for private IP"
  type        = string
}

variable "db-username" {
  description = "Database admin username"
  type        = string
  sensitive   = true
}

variable "db-password" {
  description = "Database admin password"
  type        = string
  sensitive   = true
}

variable "private_service_connection" {
  description = "Private Service Access connection"
  type        = any
}
