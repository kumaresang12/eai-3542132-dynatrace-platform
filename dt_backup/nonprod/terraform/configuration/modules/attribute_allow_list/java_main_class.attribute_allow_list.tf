resource "dynatrace_attribute_allow_list" "java_main_class" {
  enabled = true
  key     = "java.main.class"
}
