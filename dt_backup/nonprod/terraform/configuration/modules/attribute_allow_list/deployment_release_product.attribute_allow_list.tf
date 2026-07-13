resource "dynatrace_attribute_allow_list" "deployment_release_product" {
  enabled = true
  key     = "deployment.release_product"
}
