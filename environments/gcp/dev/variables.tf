variable "project_id" {
  type = string
}

variable "project_name" {
  type = string
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "app_subnet_cidr" {
  type = string
}

variable "db_subnet_cidr" {
  type = string
}

variable "vm_name" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "app_firewall_ingress_rules" {
  type = list(object({
    protocol = string
    ports    = list(string)
    cidr     = string
  }))
}

variable "db_name" {
  type = string
}

variable "db_version" {
  type = string
}

variable "db_tier" {
  type = string
}

variable "ssh_public_key" {
  type = string
}

