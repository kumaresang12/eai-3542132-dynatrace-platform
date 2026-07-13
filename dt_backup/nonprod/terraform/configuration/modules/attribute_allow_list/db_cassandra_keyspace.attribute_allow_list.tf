resource "dynatrace_attribute_allow_list" "db_cassandra_keyspace" {
  enabled = true
  key     = "db.cassandra.keyspace"
}
