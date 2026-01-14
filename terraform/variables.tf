variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "bucket_name" {
  type        = string
  default     = "bigdatabucket"
}
variable "bucket_acl" {
  type        = string
  default     = "public-read"
}
variable "bucket_size" {
  type        = number
  default     = 524288
}
variable "ssh_key_path" {
    type      = string
}


variable "default_cidr" {
  type        = list(string)
  default     = ["192.168.10.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}
variable "vpc_name" {
  type        = string
  default     = "master-node"   ##switch to master-node
  description = "VPC network & subnet name"
}

variable "vm_user" {
  type        = string
  default     = "ubuntu"
  description = ""
}

variable "vpc" {
  type = map(any)
  default = {
    cores         = 2,
    memory        = 4,
    core_fraction = 20,
    platform_id   = "standard-v3"
    image_family  = "ubuntu-2004-lts"
    image_id      = "fd89j9gu6vbcmqkcf4gh"
    disk_size     = 40
  }
}

variable "cidr" {
  type        = list(string)
  default     = ["192.168.20.0/24", "192.168.30.0/24", "192.168.40.0/24"]
  description = "zone cirds (https://cloud.yandex.ru/docs/overview/concepts/geo-scope)"
}

variable "subnet" {
  type        = list(string)
  default     = ["ru-central1-a", "ru-central1-b", "ru-central1-d"]
  description = "subnet zones (https://cloud.yandex.ru/docs/overview/concepts/geo-scope)"
}
