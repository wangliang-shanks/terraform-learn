terraform {
  required_providers {
    alicloud = {
      source = "aliyun/alicloud"
      version = "1.209.1"
    }
  }
}

provider "alicloud" {
  access_key = var.accessKeyId
  secret_key = var.accessKeySecret
  region = var.region
}

