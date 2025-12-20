variable "project_name" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "public_subnet_cidr" {
  type = string
}

variable "availability_zone" {
  type = string
}

variable "private_subnet_cidr_a" {
  description = "CIDR for first private subnet"
  type        = string
}

variable "private_subnet_cidr_b" {
  description = "CIDR for second private subnet"
  type        = string
}

variable "availability_zone_2" {
  description = "Second AZ for private subnet"
  type        = string
}
