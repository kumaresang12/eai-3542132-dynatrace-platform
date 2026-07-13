resource "dynatrace_attribute_allow_list" "php_cli_working_dir" {
  enabled = true
  key     = "php.cli.working.dir"
}
