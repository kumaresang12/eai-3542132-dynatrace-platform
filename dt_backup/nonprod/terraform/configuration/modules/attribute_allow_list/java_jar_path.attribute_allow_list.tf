resource "dynatrace_attribute_allow_list" "java_jar_path" {
  enabled = true
  key     = "java.jar.path"
}
