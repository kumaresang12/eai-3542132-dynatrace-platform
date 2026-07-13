resource "dynatrace_attribute_allow_list" "deployment_release_stage" {
  enabled = true
  key     = "deployment.release_stage"
}
