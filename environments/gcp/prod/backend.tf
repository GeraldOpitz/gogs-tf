terraform {
  backend "gcs" {
    bucket  = "gogs-terraform-state"
    prefix  = "gcp/dev"
  }
}
