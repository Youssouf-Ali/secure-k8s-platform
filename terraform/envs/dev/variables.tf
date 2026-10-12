variable "region" {
  description = "Région DigitalOcean"
  type        = string
  default     = "fra1"
}

variable "vpc_ip_range" {
  description = "Plage d'adresses du VPC (CIDR)"
  type        = string
  default     = "10.10.0.0/16"
}
