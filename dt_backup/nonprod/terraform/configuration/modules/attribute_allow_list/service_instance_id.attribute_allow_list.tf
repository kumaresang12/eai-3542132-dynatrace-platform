resource "dynatrace_attribute_allow_list" "service_instance_id" {
  enabled = true
  key     = "service.instance.id"
}
