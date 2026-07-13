resource "dynatrace_attribute_allow_list" "host_image_version" {
  enabled = true
  key     = "host.image.version"
}
