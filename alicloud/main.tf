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
  region     = var.region
}

module "terraform-instance" {
  source = "github.com/wangliang-shanks/terraform-ecs-modules/alicloud"

  access_key = var.accessKeyId
  secret_key = var.accessKeySecret
  region     = var.region
  vpc_name   = var.vpc_name
  zone_id    = var.zone_id
  instance_name = var.instance_name
}
