data "digitalocean_domain" "pettypiece_ca" {
  name = "pettypiece.ca"
}

resource "digitalocean_record" "vpn1_pettypiece_ca" {
  domain = data.digitalocean_domain.pettypiece_ca.name
  type   = "A"
  name   = "vpn1"
  value  = digitalocean_droplet.vpn.ipv4_address
  ttl    = 60
}
