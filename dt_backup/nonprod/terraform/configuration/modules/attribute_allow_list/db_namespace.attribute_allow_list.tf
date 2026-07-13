resource "dynatrace_attribute_allow_list" "db_namespace" {
  enabled = true
  key     = "db.namespace"
}
