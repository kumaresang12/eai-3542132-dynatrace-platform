resource "dynatrace_api_detection" "Built-In_Wordpress" {
  api_color       = "#b4e5f9"
  api_name        = "Built-In Wordpress"
  insert_after    = "vu9U3hXa3q0AAAABABxidWlsdGluOmFwaXMuZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkNDdhZjNiZDEtZWYyYy0zNmFhLWI0YmUtNDAwYzlmNWNiNjVlvu9U3hXa3q0"
  technology      = "PHP"
  third_party_api = true
  conditions {
    condition {
      base    = "FILE_NAME"
      matcher = "CONTAINS"
      pattern = "wp-includes/"
    }
  }
}
