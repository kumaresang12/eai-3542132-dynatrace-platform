resource "dynatrace_attribute_allow_list" "db_cosmosdb_request_charge" {
  enabled = true
  key     = "db.cosmosdb.request_charge"
}
