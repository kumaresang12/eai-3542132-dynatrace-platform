resource "dynatrace_api_detection" "Built-In_NET_IBM_MQ" {
  api_color       = "#ffd0ab"
  api_name        = "Built-In .NET IBM MQ"
  insert_after    = "vu9U3hXa3q0AAAABABxidWlsdGluOmFwaXMuZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkZWUwNTQ0NmYtZjk5ZC0zMjdiLTkwMjYtYjgyZTYxYzc0ODUyvu9U3hXa3q0"
  technology      = "dotNet"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "IBM.WMQ."
    }
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "IBM.XMS."
    }
  }
}
