resource "dynatrace_attribute_allow_list" "application_version_build" {
  enabled = true
  key     = "application.version.build"
}
