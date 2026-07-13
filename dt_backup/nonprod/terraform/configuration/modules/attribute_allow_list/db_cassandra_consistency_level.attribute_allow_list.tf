resource "dynatrace_attribute_allow_list" "db_cassandra_consistency_level" {
  enabled = true
  key     = "db.cassandra.consistency_level"
}
