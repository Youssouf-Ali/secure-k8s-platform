output "vpc_id" {
  description = "Identifiant du VPC"
  value       = digitalocean_vpc.this.id
}

output "ip_range" {
  description = "Plage d'adresses du VPC"
  value       = digitalocean_vpc.this.ip_range
}
