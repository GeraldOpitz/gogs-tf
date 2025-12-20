resource "google_compute_instance" "this" {
  name         = var.name
  project      = var.project_id
  zone         = var.zone
  machine_type = var.machine_type

  tags = var.tags

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    subnetwork = var.subnet

    access_config {}
  }
}
