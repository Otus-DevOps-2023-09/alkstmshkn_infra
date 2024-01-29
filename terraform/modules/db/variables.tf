variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
variable "subnet_id" {
  description = "Subnet"
}
variable db_disk_image {
description = "Disk image for reddit db"
default = "reddit-db-base"
}
variable "zone" {
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-a"
}
variable "cloud_id" {
  description = "Cloud"
}
variable "service_account_key_file" {
  description = "key.json"
}
variable "folder_id" {
  description = "Folder"
}
