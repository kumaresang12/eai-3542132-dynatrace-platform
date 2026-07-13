resource "dynatrace_attribute_allow_list" "db_collection_name" {
  enabled = true
  key     = "db.collection.name"
}
