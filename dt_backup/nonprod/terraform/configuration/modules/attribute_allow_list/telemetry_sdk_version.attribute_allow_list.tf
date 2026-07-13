resource "dynatrace_attribute_allow_list" "telemetry_sdk_version" {
  enabled = true
  key     = "telemetry.sdk.version"
}
