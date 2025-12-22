module "networking" {
  source             = "../../../modules/aws/networking"
  project_name       = var.project_name
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  availability_zone  = var.availability_zone
  private_subnet_cidr_a = var.private_subnet_cidr_a
  private_subnet_cidr_b = var.private_subnet_cidr_b
  availability_zone_2   = var.availability_zone_2
}

module "app_sg" {
  source = "../../../modules/aws/security_groups"
  name   = var.app_sg_name
  vpc_id = module.networking.vpc_id

  ingress_rules = var.app_sg_ingress_rules
}

module "gogs_app" {
  source             = "../../../modules/aws/ec2"
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  subnet_id          = module.networking.public_subnet_id
  security_group_ids = [module.app_sg.security_group_id]
  key_name           = var.key_name

  name = var.ec2_name
}

data "aws_ssm_parameter" "db_username" {
  name = "db_username"
  with_decryption = true
}

data "aws_ssm_parameter" "db_password" {
  name = "db_password"
  with_decryption = true
}

module "gogs_rds" {
  source = "../../../modules/aws/rds"
  db_name = var.db_name
  db_identifier       = var.db_identifier
  db_allocated_storage = var.db_allocated_storage
  db_engine            = var.db_engine
  db_engine_version    = var.db_engine_version
  db_instance_class    = var.db_instance_class
  db_username = data.aws_ssm_parameter.db_username.value
  db_password = data.aws_ssm_parameter.db_password.value
  subnet_group_name = module.networking.db_subnet_group_name
  security_group_ids  = [module.app_sg.security_group_id]
  publicly_accessible = false
  skip_final_snapshot = true
}
