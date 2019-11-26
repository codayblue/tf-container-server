resource "docker_volume" "jenkins_home_volume" {
  name = "jenkins_home"
}

resource "docker_image" "jenkins_lts_image" {
  name = "jenkins/jenkins:lts"
}

resource "docker_container" "jenkins" {
  name = "jenkins"
  image = docker_image.jenkins_lts_image.latest
  restart = "unless-stopped"

  ports {
    internal = 8080
    external = 8081
  }

  volumes {
    volume_name = docker_volume.jenkins_home_volume.name
    container_path = "/var/jenkins_home"
  }
}
