project_id   = "gogsteam3"
project_name = "gogsteam3"

region = "us-central1"
zone   = "us-central1-a"

vpc_cidr        = "10.20.0.0/16"
app_subnet_cidr = "10.20.1.0/24"
db_subnet_cidr  = "10.20.2.0/24"

vm_name        = "gogs-vm"
machine_type  = "e2-medium"

db_name    = "gogs-db"
db_version = "POSTGRES_15"
db_tier    = "db-f1-micro"


app_firewall_ingress_rules = [
  {
    protocol = "tcp"
    ports    = ["22", "3000", "80", "5432"]
    cidr     = "0.0.0.0/0"
  }
]

ssh_public_key = "${file("/var/jenkins_home/.ssh/gcp_vm_key.pub")}"
