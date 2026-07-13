resource "dynatrace_attribute_allow_list" "telemetry_sdk_name" {
  enabled = true
  key     = "telemetry.sdk.name"
}
