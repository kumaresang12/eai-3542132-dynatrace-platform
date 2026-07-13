resource "dynatrace_attribute_allow_list" "db_redis_operation" {
  enabled = true
  key     = "db.redis.operation"
}
