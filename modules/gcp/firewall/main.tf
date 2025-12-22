resource "google_compute_firewall" "this" {
  name    = var.name
  network = var.network
  direction = "INGRESS"

  target_tags = var.target_tags
  source_ranges = [
    for rule in var.ingress_rules : rule.cidr
  ]

  dynamic "allow" {
    for_each = var.ingress_rules
    content {
      protocol = allow.value.protocol
      ports    = allow.value.ports
    }
  }
}
