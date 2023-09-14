terraform {
  required_providers {
    alicloud = {
      source = "aliyun/alicloud"
      version = "1.209.1"
    }
  }
  backend "oss" {
    access_key = ""
    secret_key = ""
    bucket              = "terraform-learn"
    prefix              = "env:"
    key                 = "backend/terraform.tfstate"
    acl                 = "private"
    region              = "cn-shanghai"
    encrypt             = "true"
    tablestore_endpoint = "https://terraform-store.cn-shanghai.tablestore.aliyuncs.com"
    tablestore_table    = "terraform_learn"
  }
}

provider "alicloud" {
  access_key = var.access_key
  secret_key = var.secret_key
  region = var.region
}

resource "alicloud_vpc" "vpc" {
  vpc_name   = var.vpc_name
  cidr_block = var.vpc_cidr_block
}

resource "alicloud_vswitch" "vsw" {
  vpc_id     = alicloud_vpc.vpc.id
  cidr_block = var.vsw_cidr_block
  zone_id    = var.zone_id
}