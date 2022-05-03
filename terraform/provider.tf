terraform {
  backend "remote" {
    organization = "pettypiece"
    workspaces {
      name = "vpn"
    }
  }
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.19.0"
    }
  }
}

