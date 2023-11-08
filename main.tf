provider "alicloud" {
  skip_region_validation = true
  access_key             = var.access_key
  secret_key             = var.secret_key
  region                 = "cn-hangzhou"
}

variable "access_key" {
  type      = string
  sensitive = true
}


variable "secret_key" {
  type      = string
  sensitive = true
}

resource "alicloud_vpc" "vpc" {
  vpc_name    = "tf-example"
  cidr_block = "172.16.0.0/12"
}
