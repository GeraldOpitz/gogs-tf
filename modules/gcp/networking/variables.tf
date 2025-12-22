variable "project_name" {
  description = "Project name (used as prefix)"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR for the VPC (not directly used but kept for parity with AWS)"
  type        = string
}

variable "app_subnet_cidr" {
  description = "CIDR for app subnet"
  type        = string
}

variable "db_subnet_cidr" {
  description = "CIDR for database subnet"
  type        = string
}
