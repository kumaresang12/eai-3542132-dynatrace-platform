resource "dynatrace_attribute_allow_list" "deployment_environment" {
  enabled = true
  key     = "deployment.environment"
}
