terraform {
  required_version = ">= 1.5"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

# Le jeton est lu dans la variable d'environnement DIGITALOCEAN_TOKEN.
provider "digitalocean" {}
