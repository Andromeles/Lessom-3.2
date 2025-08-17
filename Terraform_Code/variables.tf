
variable "cloud_id" {
  type        = string
  default = "***********"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
  sensitive = true
}

variable "folder_id" {
  type        = string
  default = "**********"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
  sensitive = true
}

variable "yc_region" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "yc_region_vm2" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}


###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-ed25519 ********* ad@DESKTOP-GRANAHN"
  description = "ssh-keygen -t ed25519"
  sensitive = true
}

###VM_WEB_

variable "vm_web_family" {
  type = string
  default = "ubuntu-2004-lts"
}

variable "vm_web_name" {
  type = string
  default = "netology-develop-platform-web"
}

variable "vm_web_platform_id" {
  type = string
  default = "standard-v1"
}

# variable "vm_web_cores" {
#   type = number
#   default = 2
# }

# variable "vm_web_memory" {
#   type = number
#   default = 1
# }

# variable "vm_web_core_fraction" {
#   type = number
#   default = 5
# }

variable "vms_resources" {
  default = {
    web = {
      cores = 2
      memory = 1
      fraction = 5
    },
    db = {
      cores = 2
      memory = 2
      fraction = 20
    }
  }
}

### var for VM2

variable "vm_db_family" {
  type = string
  default = "ubuntu-2004-lts"
}

variable "vm_db_name" {
  type = string
  default = "netology-develop-platform-db"
}

variable "vm_db_platform_id" {
  type = string
  default = "standard-v1"
}
variable "metadata" {
  default = {
    serial-port-enable = 1
    ssh-keys           = "ubuntu:${var.vms_ssh_root_key}"
    }
}