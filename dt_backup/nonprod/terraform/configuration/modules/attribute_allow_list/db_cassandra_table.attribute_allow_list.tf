resource "dynatrace_attribute_allow_list" "db_cassandra_table" {
  enabled = true
  key     = "db.cassandra.table"
}
