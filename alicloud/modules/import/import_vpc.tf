# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform
resource "alicloud_vswitch" "test_switch" {
  cidr_block           = "10.0.0.0/24"
  description          = null
  enable_ipv6          = null
  ipv6_cidr_block_mask = null
  tags                 = {}
  vpc_id               = alicloud_vpc.test_vpc.id
  vswitch_name         = "test"
  zone_id              = "cn-shanghai-b"
  timeouts {
    create = null
    delete = null
    update = null
  }
}

# __generated__ by Terraform
resource "alicloud_vpc" "test_vpc" {
  cidr_block            = "10.0.0.0/8"
  classic_link_enabled  = false
  description           = null
  dry_run               = null
  enable_ipv6           = null
  ipv6_isp              = null
  resource_group_id     = "rg-acfmxdwrkp55ogi"
  route_table_id        = "vtb-uf6v9ts0thuo0cly7w8l2"
  tags                  = {}
  user_cidrs            = []
  vpc_name              = "vpx-test"
  timeouts {
    create = null
    delete = null
    update = null
  }
}
