resource "dynatrace_attribute_allow_list" "php_fpm_pool_name" {
  enabled = true
  key     = "php.fpm.pool.name"
}
