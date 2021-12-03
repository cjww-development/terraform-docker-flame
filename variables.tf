variable "docker_host" {
  type        = string
  description = "The host where docker resides"
}

variable "flame_image_name" {
  type        = string
  description = "The name of the Flame docker image that should be pulled"
}

variable "flame_volume_name" {
  type        = string
  description = "The name of the docker volume to be used by the Flame container"
}

variable "flame_network_name" {
  type        = string
  description = "The name of the docker network that the Flame container will be connected to"
}

variable "flame_container_name" {
  type        = string
  description = "The name of the Flame container to be created"
}

variable "restart_policy" {
  type        = string
  description = "The restart policy for the container. Must be one of 'no', 'on-failure', 'always', 'unless-stopped'. Defaults to no."
  validation {
    condition = contains(
      [
        "no",
        "on-failure",
        "always",
        "unless-stopped"
      ],
      var.restart_policy
    )
    error_message = "The provided value did not match a valid value."
  }
}

variable "access_port" {
  type        = number
  description = "The host port number the internal port 5005 will map to"
  default     = 5005
}

variable "access_interface_bind" {
  type        = string
  description = "The network interface that the 5005 port will bind to"
  default     = "0.0.0.0"
}

variable "dashboard_password" {
  type        = string
  description = "The password to access Flame"
  sensitive   = true
}
