resource "dynatrace_attribute_allow_list" "deployment_release_build_version" {
  enabled = true
  key     = "deployment.release_build_version"
}
