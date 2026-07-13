resource "dynatrace_api_detection" "Built-In_NET_Entity_Framework_Core" {
  api_color       = "#4fd5e0"
  api_name        = "Built-In .NET Entity Framework Core"
  insert_after    = "vu9U3hXa3q0AAAABABxidWlsdGluOmFwaXMuZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkZTc4YjI5ZjktOGIwNi0zOWFmLWEyYmUtYjk1MjEwNGRiMzA0vu9U3hXa3q0"
  technology      = "dotNet"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "Microsoft.EntityFrameworkCore."
    }
  }
}
