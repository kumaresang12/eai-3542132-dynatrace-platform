resource "dynatrace_attribute_allow_list" "host_image_name" {
  enabled = true
  key     = "host.image.name"
}
