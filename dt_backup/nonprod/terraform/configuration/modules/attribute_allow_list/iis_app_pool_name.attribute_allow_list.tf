resource "dynatrace_attribute_allow_list" "iis_app_pool_name" {
  enabled = true
  key     = "iis.app_pool.name"
}
