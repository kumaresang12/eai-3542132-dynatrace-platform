resource "dynatrace_attribute_allow_list" "telemetry_auto_version" {
  enabled = true
  key     = "telemetry.auto.version"
}
