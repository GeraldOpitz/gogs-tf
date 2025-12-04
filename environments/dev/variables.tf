variable "project_name" {
  type        = string
  description = "Project name for tagging resources"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidr" {
  type        = string
  description = "CIDR block for the public subnet"
}

variable "availability_zone" {
  type        = string
  description = "Availability zone for public subnet"
}

variable "app_sg_name" {
  type        = string
  description = "Name of the application security group"
}

variable "app_sg_ingress_rules" {
  type = list(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  description = "Ingress rules for the application SG"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "Instance type for EC2"
}

variable "key_name" {
  type        = string
  description = "Key pair name for EC2"
}

variable "ec2_name" {
  type        = string
  description = "Tag name for the EC2 instance"
}

variable "db_allocated_storage" {
  description = "db allocated storage"
  type = number 
}

variable "db_engine" { 
  description = "Database engine"
  type = string 
}
variable "db_engine_version" {
  description = "Database engine version"
  type = string 
}
variable "db_instance_class" {
  description = "Database instance class"
  type = string 
}

variable "private_subnet_cidr_a" { 
  description = "Private subnet CIDR block A"
  type = string 
}

variable "private_subnet_cidr_b" { 
  description = "Private subnet CIDR block B"
  type = string 
}

variable "availability_zone_2"   { 
  description = "Second availability zone"
  type = string 
}

variable "ssh_allowed_ip" {
  description = "IP allowed to connect via SSH"
  type        = list(string)
}

variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}
variable "profile" {
  description = "AWS CLI profile name"
  type        = string
  default     = "admin"
}
