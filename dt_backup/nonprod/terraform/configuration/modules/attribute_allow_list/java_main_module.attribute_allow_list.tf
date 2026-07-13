resource "dynatrace_attribute_allow_list" "java_main_module" {
  enabled = true
  key     = "java.main.module"
}
