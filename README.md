<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_droplet.droplet](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/droplet) | resource |
| [digitalocean_reserved_ip.droplet](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/reserved_ip) | resource |
| [digitalocean_volume.volumes](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/volume) | resource |
| [digitalocean_volume_attachment.droplet_volume_attachments](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/volume_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backups"></a> [backups](#input\_backups) | (Optional) Boolean controlling if backups are made. Defaults to false. | `bool` | `false` | no |
| <a name="input_droplet_agent"></a> [droplet\_agent](#input\_droplet\_agent) | (Optional) A boolean indicating whether to install the DigitalOcean agent used for providing access to the Droplet web console in the control panel. By default, the agent is installed on new Droplets but installation errors (i.e. OS not supported) are ignored. To prevent it from being installed, set to false. To make installation errors fatal, explicitly set it to true. | `bool` | `null` | no |
| <a name="input_graceful_shutdown"></a> [graceful\_shutdown](#input\_graceful\_shutdown) | (Optional) A boolean indicating whether the droplet should be gracefully shut down before it is deleted. | `bool` | `null` | no |
| <a name="input_image_id"></a> [image\_id](#input\_image\_id) | (Required) The Droplet image ID. This could be either image ID or droplet snapshot ID. | `string` | n/a | yes |
| <a name="input_ipv6"></a> [ipv6](#input\_ipv6) | (Optional) Boolean controlling if IPv6 is enabled. Defaults to false. | `bool` | `false` | no |
| <a name="input_monitoring"></a> [monitoring](#input\_monitoring) | (Optional) Boolean controlling whether monitoring agent is installed. Defaults to false. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) The Droplet name. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region where the Droplet will be created. | `string` | n/a | yes |
| <a name="input_reserved_ip"></a> [reserved\_ip](#input\_reserved\_ip) | (Optional) A booelan indicating whether the droplet should have a dedicated public ip address. Default to 'false'. | `bool` | `false` | no |
| <a name="input_resize_diks"></a> [resize\_diks](#input\_resize\_diks) | (Optional) Boolean controlling whether to increase the disk size when resizing a Droplet. It defaults to true. When set to false, only the Droplet's RAM and CPU will be resized. Increasing a Droplet's disk size is a permanent change. Increasing only RAM and CPU is reversible. | `bool` | `true` | no |
| <a name="input_size"></a> [size](#input\_size) | (Required) The unique slug that indentifies the type of Droplet. | `string` | n/a | yes |
| <a name="input_ssh_keys"></a> [ssh\_keys](#input\_ssh\_keys) | (Optional) A list of SSH key IDs or fingerprints to enable in the format [12345, 123456]. To retrieve this info, use the DigitalOcean API or CLI (doctl compute ssh-key list). Once a Droplet is created keys can not be added or removed via this provider. Modifying this field will prompt you to destroy and recreate the Droplet. | `list(string)` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A list of the tags to be applied to this Droplet. | `list(string)` | `null` | no |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | (Optional) A string of the desired User Data for the Droplet. | `string` | `null` | no |
| <a name="input_volumes"></a> [volumes](#input\_volumes) | (Optional) A list of volumes to create for the droplet. | <pre>map(object({<br>    name                      = string<br>    size                      = number<br>    description               = optional(string)<br>    snapshot_id               = optional(string)<br>    initial_file_system_type  = optional(string)<br>    initial_file_system_label = optional(string)<br>    tags                      = optional(list(string))<br>  }))</pre> | `{}` | no |
| <a name="input_vpc_uuid"></a> [vpc\_uuid](#input\_vpc\_uuid) | (Optional) The ID of the VPC where the Droplet will be located. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the Droplet. |
| <a name="output_name"></a> [name](#output\_name) | The Name of the Droplet. |
| <a name="output_private_ip"></a> [private\_ip](#output\_private\_ip) | The IPv4 Private IP address of the droplet. |
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | The IPv4 Public IP address ot the droplet. |
| <a name="output_public_ip_ipv6"></a> [public\_ip\_ipv6](#output\_public\_ip\_ipv6) | The IPv6 Private IP address ot the droplet if enabled. |
| <a name="output_reserved_ip"></a> [reserved\_ip](#output\_reserved\_ip) | The Reserved IP of the droplet if enabled. |
| <a name="output_urn"></a> [urn](#output\_urn) | The URN of the Droplet. |
<!-- END_TF_DOCS -->