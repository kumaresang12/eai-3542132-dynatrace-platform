resource "dynatrace_attribute_allow_list" "nodejs_app_name" {
  enabled = true
  key     = "nodejs.app.name"
}
