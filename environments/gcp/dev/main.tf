module "networking" {
  source            = "../../../modules/gcp/networking"
  project_name      = var.project_name
  region            = var.region

  vpc_cidr          = var.vpc_cidr
  app_subnet_cidr   = var.app_subnet_cidr
  db_subnet_cidr    = var.db_subnet_cidr
}

module "app_firewall" {
  source   = "../../../modules/gcp/firewall"
  name        = "gogs-app-fw"
  network     = module.networking.vpc_name
  target_tags = ["gogs-app"]

  ingress_rules = var.app_firewall_ingress_rules
}

module "gogs_app" {
  source = "../../../modules/gcp/vm"

  project_id = var.project_id
  name       = var.vm_name
  region     = var.region
  zone       = var.zone

  subnet     = module.networking.app_subnet_name

  machine_type  = var.machine_type

  tags = ["gogs-app"]
  ssh_public_key = var.ssh_public_key

}

data "google_secret_manager_secret_version" "db-username" {
  secret  = "db-username"
  project = var.project_id
}

data "google_secret_manager_secret_version" "db-password" {
  secret  = "db-password"
  project = var.project_id
}

module "gogs_db" {
  source   = "../../../modules/gcp/cloudsql"

  name     = var.db_name
  region   = var.region

  db_version = var.db_version
  tier       = var.db_tier

  db-username = data.google_secret_manager_secret_version.db-username.secret_data
  db-password = data.google_secret_manager_secret_version.db-password.secret_data

  vpc_id   = module.networking.vpc_id
  private_service_connection = module.networking.private_service_connection
}
