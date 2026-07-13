resource "dynatrace_attribute_allow_list" "db_cosmosdb_container" {
  enabled = true
  key     = "db.cosmosdb.container"
}
