resource "dynatrace_service_detection_rules" "environment_Built-in_Istio_canonical_service" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABAB9idWlsdGluOnNlcnZpY2UtZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkZWMzMzQ5ZDMtZjcyZC00Y2FlLWI5OGUtZTdjZTZkYzQ0ZTU3vu9U3hXa3q0"
  scope        = "environment"
  rule {
    condition             = "isNotNull(istio.canonical_service)"
    rule_name             = "[Built-in] Istio canonical service"
    service_name_template = "{istio.canonical_service}"
  }
}
