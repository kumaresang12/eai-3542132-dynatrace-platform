resource "dynatrace_attribute_allow_list" "glassfish_instance_name" {
  enabled = true
  key     = "glassfish.instance.name"
}
