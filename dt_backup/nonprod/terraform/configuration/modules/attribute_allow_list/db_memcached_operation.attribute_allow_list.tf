resource "dynatrace_attribute_allow_list" "db_memcached_operation" {
  enabled = true
  key     = "db.memcached.operation"
}
