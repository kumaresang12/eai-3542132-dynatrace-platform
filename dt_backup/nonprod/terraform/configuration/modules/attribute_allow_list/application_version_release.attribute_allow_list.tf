resource "dynatrace_attribute_allow_list" "application_version_release" {
  enabled = true
  key     = "application.version.release"
}
