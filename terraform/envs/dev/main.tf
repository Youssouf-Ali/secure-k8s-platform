module "network" {
  source   = "../../modules/network"
  name     = "secure-k8s-dev"
  region   = var.region
  ip_range = var.vpc_ip_range
}
