resource "dynatrace_attribute_allow_list" "db_cassandra_page_size" {
  enabled = true
  key     = "db.cassandra.page_size"
}
