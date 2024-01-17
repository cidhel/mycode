/*
This builds an nginx image using terraform
version of cidhel
*/
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker" #docker provider
      version = "~> 2.22.0"
    }
  }
}

provider "docker" {} #nothing to do but mandatory

resource "docker_image" "nginx" { #image resource
  name         = "nginx:1.19.6" #nginx version
  keep_locally = true    // keep image after "destroy"
}

resource "docker_container" "nginx" { #docker container resource
  image = docker_image.nginx.image_id
  name  = "tutorial" #arbitrary name
  ports {
    internal = 80
    external = 2224 #port changed
  }
}

