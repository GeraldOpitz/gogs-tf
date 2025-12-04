variable "db_allocated_storage" {
  description = "Stoarage for db"
  type        = number
}

variable "db_engine" {
  description = "Database engine"
  type        = string
}

variable "db_engine_version" {
  description = "Database engine version"
  type        = string
}

variable "db_instance_class" {
  description = "Database instance class"
  type        = string
}

variable "db_username" {
  description = "Database master username"
  type        = string
}
variable "db_password" {
  description = "Database master password"
  type        = string
}

variable "subnet_group_name" {
  description = "DB subnet group name"
  type        = string
}

variable "skip_final_snapshot" {
  description = "Whether to skip the final snapshot"
  type        = bool
  default     = true
}

variable "publicly_accessible" {
  description = "Whether the DB instance is publicly accessible"
  type        = bool
  default     = false
}

variable "security_group_ids" {
  description = "List of security group IDs to associate with the DB instance"
  type        = list(string)
  default     = []
}

variable "db_identifier" {
  description = "Name/identifier for the DB instance"
  type        = string
}

variable "backup_retention_period" {
  type    = number
  default = 0
}

variable "multi_az" {
  type    = bool
  default = false
}
