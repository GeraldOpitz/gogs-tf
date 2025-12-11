project_name       = "gogs"
vpc_cidr           = "10.0.0.0/16"
public_subnet_cidr = "10.0.1.0/24"
availability_zone  = "us-east-1a"

app_sg_name = "gogs-sg"

app_sg_ingress_rules = [
  {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["186.189.88.248/32"]
  },
  {
    description = "Allow Postgres"
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
]

ami_id        = "ami-0ecb62995f68bb549"
instance_type = "t3.micro"
key_name      = "ec2-app-key"
ec2_name      = "gogs-app"

db_allocated_storage = 20
db_engine            = "postgres"
db_engine_version    = "17.6"
db_instance_class    = "db.t3.micro"

private_subnet_cidr_a = "10.0.2.0/24"
private_subnet_cidr_b = "10.0.3.0/24"
availability_zone_2   = "us-east-1b"
ssh_allowed_ip = ["186.189.88.248/32"]
db_name = "gogsdb"
db_identifier = "gogs-dev-db"
