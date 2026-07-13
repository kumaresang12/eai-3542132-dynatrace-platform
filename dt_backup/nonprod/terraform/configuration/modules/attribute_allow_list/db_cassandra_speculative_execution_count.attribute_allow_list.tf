resource "dynatrace_attribute_allow_list" "db_cassandra_speculative_execution_count" {
  enabled = true
  key     = "db.cassandra.speculative_execution_count"
}
