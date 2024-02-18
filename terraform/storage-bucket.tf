terraform {
  required_version = ">= 1.0.0"
  required_providers {
    yandex    = {
      source  = "yandex-cloud/yandex"
      version = ">= 0.103.0"
    }
  }
backend "s3" {
    endpoints = {
      s3 = "https://storage.yandexcloud.net"
    }
    bucket          = "test-states"
    region          = "ru-central1"
    key             = "main/main.tfstate"


    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true

  }
}

provider "yandex" {
 # access_key                = var.access_key
 # secret_key                = var.secret_key
  token                     = var.yc_token
  service_account_key_file  = var.service_account_key_file
  cloud_id                  = var.cloud_id
  folder_id                 = var.folder_id
  zone                      = var.zone
}
