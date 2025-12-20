resource "aws_db_instance" "gogs_db" {
  identifier             = var.db_identifier
  allocated_storage      = var.db_allocated_storage
  engine                 = var.db_engine
  engine_version         = var.db_engine_version
  instance_class         = var.db_instance_class
  username               = var.db_username
  password               = var.db_password
  vpc_security_group_ids = var.security_group_ids
  db_subnet_group_name   = var.subnet_group_name
  skip_final_snapshot    = var.skip_final_snapshot
  publicly_accessible    = var.publicly_accessible
  db_name                = var.db_name

  backup_retention_period = var.backup_retention_period
  multi_az                = var.multi_az
  apply_immediately       = true
}
