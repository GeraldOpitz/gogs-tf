resource "google_sql_database_instance" "this" {
  name             = var.name
  region           = var.region
  database_version = var.db_version

  settings {
    tier = var.tier

    ip_configuration {
      private_network = var.vpc_id
    }
  }

  depends_on = [
    var.private_service_connection
  ]
}

resource "google_sql_user" "admin" {
  name     = var.db-username
  instance = google_sql_database_instance.this.name
  password = var.db-password
}
