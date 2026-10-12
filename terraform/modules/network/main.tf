resource "digitalocean_vpc" "this" {
  name        = var.name
  region      = var.region
  ip_range    = var.ip_range
  description = "VPC du projet secure-k8s-platform"
}
