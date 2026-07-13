resource "dynatrace_attribute_allow_list" "gcp_cloud_run_service" {
  enabled = true
  key     = "gcp.cloud_run.service"
}
