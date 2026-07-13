resource "dynatrace_service_detection_rules" "environment_Built-in_Google_App_Engine" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABAB9idWlsdGluOnNlcnZpY2UtZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkNjUzYTE4YWYtMTg5My00NTAwLWFjMjctOTM3Y2FhMjAwMDFlvu9U3hXa3q0"
  scope        = "environment"
  rule {
    condition             = "isNotNull(gcp.app_engine.service)"
    rule_name             = "[Built-in] Google App Engine"
    service_name_template = "{gcp.app_engine.service}"
  }
}
