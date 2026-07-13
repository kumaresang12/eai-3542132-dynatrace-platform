resource "dynatrace_attribute_allow_list" "db_cassandra_coordinator_dc" {
  enabled = true
  key     = "db.cassandra.coordinator.dc"
}
