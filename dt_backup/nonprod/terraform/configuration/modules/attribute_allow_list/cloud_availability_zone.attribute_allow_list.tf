resource "dynatrace_attribute_allow_list" "cloud_availability_zone" {
  enabled = true
  key     = "cloud.availability_zone"
}
