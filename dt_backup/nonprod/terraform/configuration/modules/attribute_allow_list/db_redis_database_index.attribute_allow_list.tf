resource "dynatrace_attribute_allow_list" "db_redis_database_index" {
  enabled = true
  key     = "db.redis.database_index"
}
