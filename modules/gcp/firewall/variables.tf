variable "name" {
  description = "Firewall name prefix"
  type        = string
}

variable "network" {
  description = "VPC name"
  type        = string
}

variable "target_tags" {
  description = "Network tags applied to instances"
  type        = list(string)
}

variable "ingress_rules" {
  description = "Ingress rules similar to AWS SG"
  type = list(object({
    protocol = string
    ports    = list(string)
    cidr     = string
  }))
}
