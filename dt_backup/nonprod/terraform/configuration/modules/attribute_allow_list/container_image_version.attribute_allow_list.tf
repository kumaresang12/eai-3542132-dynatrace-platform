resource "dynatrace_attribute_allow_list" "container_image_version" {
  enabled = true
  key     = "container.image.version"
}
