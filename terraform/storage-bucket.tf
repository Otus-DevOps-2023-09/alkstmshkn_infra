
terraform {
  /*
  required_version = ">= 1.0.0"
  required_providers {
    yandex    = {
      source  = "yandex-cloud/yandex"
      version = ">= 0.103.0"
    }
  */
  backend "s3" {
    endpoint = "storage.yandexcloud.net"
    bucket   = "alkstmshkn"
    region   = "ru-central1-a"
    key      = "stage.tfstate"

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
