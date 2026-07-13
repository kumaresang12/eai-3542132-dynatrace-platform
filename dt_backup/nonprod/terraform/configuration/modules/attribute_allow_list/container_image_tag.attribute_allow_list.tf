resource "dynatrace_attribute_allow_list" "container_image_tag" {
  enabled = true
  key     = "container.image.tag"
}
