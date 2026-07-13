resource "dynatrace_attribute_allow_list" "db_mongodb_collection" {
  enabled = true
  key     = "db.mongodb.collection"
}
