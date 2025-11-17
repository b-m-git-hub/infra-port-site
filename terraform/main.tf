resource "digitalocean_droplet" "web" {
    image = "ubuntu-24-04-x64"
    name = "bryan-portfolio-site"
    region = "nyc2"
    size = "s-1vcpu-1gb"

    ssh_keys = [data.digitalocean_ssh_key.terraform.id]
}