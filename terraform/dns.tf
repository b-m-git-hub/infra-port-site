resource "digitalocean_domain" "portfolio" {
   name = "bryan-mcmahon.com"
   ip_address = digitalocean_droplet.web.ipv4_address
}

resource "digitalocean_record" "www" {
    domain = digitalocean_domain.portfolio.name
    type = "CNAME"
    name = "www"
    value = "@"
}