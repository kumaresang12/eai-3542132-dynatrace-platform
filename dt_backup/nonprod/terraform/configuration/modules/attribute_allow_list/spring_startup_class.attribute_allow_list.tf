resource "dynatrace_attribute_allow_list" "spring_startup_class" {
  enabled = true
  key     = "spring.startup.class"
}
