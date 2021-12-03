[![Apache-2.0 license](http://img.shields.io/badge/license-Apache-brightgreen.svg)](http://www.apache.org/licenses/LICENSE-2.0.html)

terraform-template
==================

This repository is to be used as a template for the generation of new terraform repositories.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.0.11 |
| <a name="requirement_docker"></a> [docker](#requirement\_docker) | >=2.15.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_docker"></a> [docker](#provider\_docker) | >=2.15.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [docker_container.flame](https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs/resources/container) | resource |
| [docker_image.flame_image](https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs/resources/image) | resource |
| [docker_network.flame_network](https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs/resources/network) | resource |
| [docker_volume.flame_volume](https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs/resources/volume) | resource |
| [docker_registry_image.flame](https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs/data-sources/registry_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_interface_bind"></a> [access\_interface\_bind](#input\_access\_interface\_bind) | The network interface that the 5005 port will bind to | `string` | `"0.0.0.0"` | no |
| <a name="input_access_port"></a> [access\_port](#input\_access\_port) | The host port number the internal port 5005 will map to | `number` | `5005` | no |
| <a name="input_dashboard_password"></a> [dashboard\_password](#input\_dashboard\_password) | The password to access Flame | `string` | n/a | yes |
| <a name="input_docker_host"></a> [docker\_host](#input\_docker\_host) | The host where docker resides | `string` | n/a | yes |
| <a name="input_flame_container_name"></a> [flame\_container\_name](#input\_flame\_container\_name) | The name of the Flame container to be created | `string` | n/a | yes |
| <a name="input_flame_image_name"></a> [flame\_image\_name](#input\_flame\_image\_name) | The name of the Flame docker image that should be pulled | `string` | n/a | yes |
| <a name="input_flame_network_name"></a> [flame\_network\_name](#input\_flame\_network\_name) | The name of the docker network that the Flame container will be connected to | `string` | n/a | yes |
| <a name="input_flame_volume_name"></a> [flame\_volume\_name](#input\_flame\_volume\_name) | The name of the docker volume to be used by the Flame container | `string` | n/a | yes |
| <a name="input_restart_policy"></a> [restart\_policy](#input\_restart\_policy) | The restart policy for the container. Must be one of 'no', 'on-failure', 'always', 'unless-stopped'. Defaults to no. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

License
=======
This code is open sourced licensed under the Apache 2.0 License
