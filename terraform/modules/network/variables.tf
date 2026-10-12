variable "name" {
  description = "Nom du VPC"
  type        = string
}

variable "region" {
  description = "Région DigitalOcean"
  type        = string
}

variable "ip_range" {
  description = "Plage d'adresses du VPC (CIDR)"
  type        = string
}
