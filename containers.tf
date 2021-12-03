resource "docker_container" "flame" {
  name  = var.flame_container_name
  image = docker_image.flame_image.latest

  restart = var.restart_policy

  ports {
    internal = 5005
    external = var.access_port
    ip       = var.access_interface_bind
    protocol = "tcp"
  }

  volumes {
    container_path = "/app/data"
    host_path      = docker_volume.flame_volume.mountpoint
    read_only      = false
  }
}
