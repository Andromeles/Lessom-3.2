terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">=1.5"
}

provider "yandex" {
  //token                    = y0__xDPgsvKARjB3RMgxonl4RMGQF4m508Rvub1G-hA8etFAZn7sQ //var.token
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.default_zone
  service_account_key_file = file("authorized_key.json")
  //~/ - сокращение до домашней папки(Linux) или папки пользователя(windows)
}
