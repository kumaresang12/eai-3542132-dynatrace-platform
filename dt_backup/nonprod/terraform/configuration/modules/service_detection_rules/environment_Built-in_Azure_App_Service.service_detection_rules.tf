resource "dynatrace_service_detection_rules" "environment_Built-in_Azure_App_Service" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABAB9idWlsdGluOnNlcnZpY2UtZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkY2UxZDkwZTItNjQyNy00M2ZkLTgxMDUtNGY2NzVhYTlhNDMxvu9U3hXa3q0"
  scope        = "environment"
  rule {
    condition             = "isNotNull(azure.site_name)"
    rule_name             = "[Built-in] Azure App Service"
    service_name_template = "{azure.site_name}"
  }
}
