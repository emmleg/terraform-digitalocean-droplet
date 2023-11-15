output "id" {
  value       = digitalocean_droplet.droplet.id
  description = "The ID of the Droplet."
}

output "name" {
  value       = digitalocean_droplet.droplet.name
  description = "The Name of the Droplet."
}

output "urn" {
  value       = digitalocean_droplet.droplet.urn
  description = "The URN of the Droplet."
}

output "reserved_ip" {
  value       = one(digitalocean_reserved_ip.droplet[*].ip_address)
  description = "The Reserved IP of the droplet if enabled."
}

output "public_ip" {
  value       = digitalocean_droplet.droplet.ipv4_address
  description = "The IPv4 Public IP address ot the droplet."
}

output "private_ip" {
  value       = digitalocean_droplet.droplet.ipv4_address_private
  description = "The IPv4 Private IP address of the droplet."
}

output "public_ip_ipv6" {
  value       = one(digitalocean_droplet.droplet[*].ipv6_address)
  description = "The IPv6 Private IP address ot the droplet if enabled."
}
