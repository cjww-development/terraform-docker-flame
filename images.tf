data "docker_registry_image" "flame" {
  name = var.flame_image_name
}

resource "docker_image" "flame_image" {
  name          = data.docker_registry_image.flame.name
  pull_triggers = [data.docker_registry_image.flame.sha256_digest]
  keep_locally  = true
}
