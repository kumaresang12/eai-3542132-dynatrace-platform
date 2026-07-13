resource "dynatrace_api_detection" "Built-In_Oracle_WebLogic" {
  api_color       = "#7c38a1"
  api_name        = "Built-In Oracle WebLogic"
  insert_after    = "vu9U3hXa3q0AAAABABxidWlsdGluOmFwaXMuZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkMWYzYTRkMDctNzBhYy0zYTNhLWJiMDgtOTI2M2JkNjQwZmE2vu9U3hXa3q0"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "weblogic."
    }
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "bea."
    }
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "com.weblogic."
    }
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "com.bea."
    }
  }
}
