resource "dynatrace_attribute_allow_list" "php_cli_script_path" {
  enabled = true
  key     = "php.cli.script.path"
}
