resource "dynatrace_attribute_allow_list" "db_dynamodb_region" {
  enabled = true
  key     = "db.dynamodb.region"
}
