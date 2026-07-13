resource "dynatrace_attribute_allow_list" "db_cassandra_idempotence" {
  enabled = true
  key     = "db.cassandra.idempotence"
}
