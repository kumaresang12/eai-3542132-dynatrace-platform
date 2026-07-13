resource "dynatrace_attribute_allow_list" "weblogic_domain_name" {
  enabled = true
  key     = "weblogic.domain.name"
}
