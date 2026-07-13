resource "dynatrace_attribute_allow_list" "k8s_cronjob_name" {
  enabled = true
  key     = "k8s.cronjob.name"
}
