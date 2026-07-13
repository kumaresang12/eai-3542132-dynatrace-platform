resource "dynatrace_attribute_allow_list" "container_image_name" {
  enabled = true
  key     = "container.image.name"
}
