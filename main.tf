resource "digitalocean_droplet" "droplet" {
  image  = var.image_id
  name   = var.name
  region = var.region
  size   = var.size

  backups           = var.backups
  monitoring        = var.monitoring
  ipv6              = var.ipv6
  vpc_uuid          = var.vpc_uuid
  ssh_keys          = var.ssh_keys
  resize_disk       = var.resize_diks
  user_data         = var.user_data
  droplet_agent     = var.droplet_agent
  graceful_shutdown = var.graceful_shutdown
  tags              = var.tags
}

resource "digitalocean_volume" "volumes" {
  for_each = var.volumes

  region                   = var.region
  name                     = each.value.name
  size                     = each.value.size
  description              = try(each.value.description, null)
  snapshot_id              = try(each.value.snapshot_id, null)
  initial_filesystem_type  = try(each.value.initial_file_system_type, null)
  initial_filesystem_label = try(each.value.initial_file_system_label, null)
  tags                     = try(each.value.tags, null)
}

resource "digitalocean_volume_attachment" "droplet_volume_attachments" {
  for_each = var.volumes

  droplet_id = digitalocean_droplet.droplet.id
  volume_id  = digitalocean_volume.volumes[each.key].id
}


resource "digitalocean_reserved_ip" "droplet" {
  count = var.reserved_ip ? 1 : 0

  region     = var.region
  droplet_id = digitalocean_droplet.droplet.id
}

