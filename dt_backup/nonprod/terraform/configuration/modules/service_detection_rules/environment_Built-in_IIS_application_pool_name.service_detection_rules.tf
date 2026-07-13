resource "dynatrace_service_detection_rules" "environment_Built-in_IIS_application_pool_name" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABAB9idWlsdGluOnNlcnZpY2UtZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkZmRlYjljZTItMmZjNS00OTQ0LTlkYTctNDU4ODQ3YWFjNDM0vu9U3hXa3q0"
  scope        = "environment"
  rule {
    condition             = "isNotNull(iis.app_pool.name)"
    rule_name             = "[Built-in] IIS application pool name"
    service_name_template = "{iis.app_pool.name}"
  }
}
