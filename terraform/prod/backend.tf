
terraform {

backend "s3" {
    endpoints = {
      s3 = "https://storage.yandexcloud.net"
    }
    bucket         = "terraform.test"
    region         = "ru-central1-a"
    key            = "states/stage/terraform.tfstate"
access_key         = "YCAJEireu83n8xxxxxxxxxxxx]"
secret_key         = "YCONJPmCQ9JJ08-BgswJT6Wgxxxxxxxxxxxx"

    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true

  }
}
