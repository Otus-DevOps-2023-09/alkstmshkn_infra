terraform {
#  required_providers {
#    yandex = {
#      source = "yandex-cloud/yandex"
#    }
#  }
#  required_version = ">= 0.13"
  backend "s3" {
    endpoint = "storage.yandexcloud.net"
    bucket   = "terraform.test"
    region   = "ru-central1-a"
    key      = "states/stage/terraform.test"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}


provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}
