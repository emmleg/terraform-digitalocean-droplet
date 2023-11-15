variable "image_id" {
  description = "(Required) The Droplet image ID. This could be either image ID or droplet snapshot ID."
  type        = string
}

variable "name" {
  description = "(Required) The Droplet name."
  type        = string
}

variable "region" {
  description = "The region where the Droplet will be created."
  type        = string
}

variable "size" {
  description = "(Required) The unique slug that indentifies the type of Droplet."
  type        = string
}

variable "backups" {
  description = "(Optional) Boolean controlling if backups are made. Defaults to false."
  type        = bool
  default     = false
}

variable "monitoring" {
  description = "(Optional) Boolean controlling whether monitoring agent is installed. Defaults to false."
  type        = bool
  default     = false
}

variable "ipv6" {
  description = "(Optional) Boolean controlling if IPv6 is enabled. Defaults to false."
  type        = bool
  default     = false
}

variable "vpc_uuid" {
  description = "(Optional) The ID of the VPC where the Droplet will be located."
  type        = string
  default     = null
}

variable "ssh_keys" {
  description = "(Optional) A list of SSH key IDs or fingerprints to enable in the format [12345, 123456]. To retrieve this info, use the DigitalOcean API or CLI (doctl compute ssh-key list). Once a Droplet is created keys can not be added or removed via this provider. Modifying this field will prompt you to destroy and recreate the Droplet."
  type        = list(string)
  default     = null
}

variable "resize_diks" {
  description = "(Optional) Boolean controlling whether to increase the disk size when resizing a Droplet. It defaults to true. When set to false, only the Droplet's RAM and CPU will be resized. Increasing a Droplet's disk size is a permanent change. Increasing only RAM and CPU is reversible."
  type        = bool
  default     = true
}

variable "tags" {
  description = "(Optional) A list of the tags to be applied to this Droplet."
  type        = list(string)
  default     = null
}

variable "user_data" {
  description = "(Optional) A string of the desired User Data for the Droplet."
  type        = string
  default     = null
}

variable "droplet_agent" {
  description = "(Optional) A boolean indicating whether to install the DigitalOcean agent used for providing access to the Droplet web console in the control panel. By default, the agent is installed on new Droplets but installation errors (i.e. OS not supported) are ignored. To prevent it from being installed, set to false. To make installation errors fatal, explicitly set it to true."
  type        = bool
  default     = null
}

variable "graceful_shutdown" {
  description = "(Optional) A boolean indicating whether the droplet should be gracefully shut down before it is deleted."
  type        = bool
  default     = null
}

variable "reserved_ip" {
  description = "(Optional) A booelan indicating whether the droplet should have a dedicated public ip address. Default to 'false'. "
  type        = bool
  default     = false
}

variable "volumes" {
  description = "(Optional) A list of volumes to create for the droplet."
  type = map(object({
    name                      = string
    size                      = number
    description               = optional(string)
    snapshot_id               = optional(string)
    initial_file_system_type  = optional(string)
    initial_file_system_label = optional(string)
    tags                      = optional(list(string))
  }))
  default = {}
}


