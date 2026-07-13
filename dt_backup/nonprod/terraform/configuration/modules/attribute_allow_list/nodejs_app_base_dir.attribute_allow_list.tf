resource "dynatrace_attribute_allow_list" "nodejs_app_base_dir" {
  enabled = true
  key     = "nodejs.app.base.dir"
}
