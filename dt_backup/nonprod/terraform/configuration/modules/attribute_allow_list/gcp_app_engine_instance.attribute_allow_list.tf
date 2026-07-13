resource "dynatrace_attribute_allow_list" "gcp_app_engine_instance" {
  enabled = true
  key     = "gcp.app_engine.instance"
}
