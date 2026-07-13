resource "dynatrace_attribute_allow_list" "db_cassandra_coordinator_id" {
  enabled = true
  key     = "db.cassandra.coordinator.id"
}
