resource "dynatrace_service_detection_rules" "environment_Built-in_GCP_Cloud_Run" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABAB9idWlsdGluOnNlcnZpY2UtZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkMjNhMGVjNTEtNjkxMi00NzZhLWI5YmYtODBlNmExNmI2Mjg2vu9U3hXa3q0"
  scope        = "environment"
  rule {
    condition             = "isNotNull(gcp.cloud_run.service)"
    rule_name             = "[Built-in] GCP Cloud Run"
    service_name_template = "{gcp.cloud_run.service}"
  }
}
