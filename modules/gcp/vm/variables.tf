variable "name" {
  description = "VM name"
  type        = string
}

variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "Region"
  type        = string
}

variable "zone" {
  description = "Zone"
  type        = string
}

variable "machine_type" {
  description = "GCP machine type"
  type        = string
}

variable "subnet" {
  description = "Subnetwork name"
  type        = string
}

variable "tags" {
  description = "Network tags for firewall rules"
  type        = list(string)
}

variable "image" {
  description = "Boot disk image"
  type        = string
  default     = "ubuntu-os-cloud/ubuntu-2204-lts"
}

variable "ssh_public_key_path" {
  description = "Path to the public SSH key to allow access to the VM"
  type        = string
}

