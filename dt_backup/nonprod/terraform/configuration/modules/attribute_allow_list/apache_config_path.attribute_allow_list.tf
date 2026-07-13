resource "dynatrace_attribute_allow_list" "apache_config_path" {
  enabled = true
  key     = "apache.config.path"
}
