output "vpc_id" {
  value = alicloud_vpc.vpc.id
}

output "vsw_id" {
  value = alicloud_vswitch.vsw.id
}