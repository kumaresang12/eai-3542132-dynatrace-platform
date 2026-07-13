resource "dynatrace_api_detection" "Built-In_IBM_WebSphere" {
  api_color       = "#4fd5e0"
  api_name        = "Built-In IBM WebSphere"
  insert_after    = "vu9U3hXa3q0AAAABABxidWlsdGluOmFwaXMuZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkZWFiMjU4ZGQtNWZhYi0zYzE4LTgzYTYtYjY5YTZmNzNmMzg3vu9U3hXa3q0"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "com.ibm.websphere."
    }
  }
}
