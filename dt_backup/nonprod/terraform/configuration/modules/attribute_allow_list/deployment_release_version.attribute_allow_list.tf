resource "dynatrace_attribute_allow_list" "deployment_release_version" {
  enabled = true
  key     = "deployment.release_version"
}
