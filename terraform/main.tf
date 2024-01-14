terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "~>0.35"
    }
  }
  required_version = ">= 0.13"
}

locals {
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
}

provider "yandex" {
  service_account_key_file = var.service_account_key_file
  zone                     = var.zone
}

resource "yandex_compute_instance" "app" {
  name      = "reddit-app"
  folder_id = var.folder_id
  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
    }
  }

  metadata = {
    ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }

  network_interface {
    # Указан id подсети default-ru-central1-a
    subnet_id = var.subnet_id
    nat       = true
  }

  connection {
    type  = "ssh"
    host  = yandex_compute_instance.app.network_interface.0.nat_ip_address
    user  = "ubuntu"
    agent = false
    # путь до приватного ключа
    private_key = file(var.private_key_path)
  }

  provisioner "file" {
    source      = "files/puma.service"
    destination = "/tmp/puma.service"
  }

  provisioner "remote-exec" {
    script = "files/deploy.sh"
  }
}
