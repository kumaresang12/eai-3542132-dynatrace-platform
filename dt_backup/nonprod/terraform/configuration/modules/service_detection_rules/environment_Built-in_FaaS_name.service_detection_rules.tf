resource "dynatrace_service_detection_rules" "environment_Built-in_FaaS_name" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABAB9idWlsdGluOnNlcnZpY2UtZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkMjg0Zjc3NjAtYmFlMy00OWI3LTgzNDYtMTI3NmYxMDAxN2Fkvu9U3hXa3q0"
  scope        = "environment"
  rule {
    condition             = "isNotNull(faas.name)"
    rule_name             = "[Built-in] FaaS name"
    service_name_template = "{faas.name}"
  }
}
