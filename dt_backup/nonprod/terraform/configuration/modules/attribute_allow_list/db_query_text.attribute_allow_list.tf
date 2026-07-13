resource "dynatrace_attribute_allow_list" "db_query_text" {
  enabled = true
  key     = "db.query.text"
}
