resource "dynatrace_api_detection" "Built-In_JRE" {
  api_color       = "#c95218"
  api_name        = "Built-In JRE"
  insert_after    = "vu9U3hXa3q0AAAABABxidWlsdGluOmFwaXMuZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkYjhhOGNlYmMtOGVjMC0zMzk4LTkxNDQtNWE1YTk5MjE3MzYxvu9U3hXa3q0"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "com.dynatrace.agent.introspection.casp.flawfinder.access."
    }
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "javax."
    }
    condition {
      base    = "FQCN"
      matcher = "CONTAINS"
      pattern = "DynatraceStringConcat_"
    }
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "sun."
    }
    condition {
      base    = "FQCN"
      matcher = "CONTAINS"
      pattern = "DtStringConcat_"
    }
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "com.oracle."
    }
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "jdk."
    }
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "java."
    }
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "com.sun."
    }
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "com.dynatrace.agent.introspection.casp.flawfinder.tracking.wrappers."
    }
  }
}
