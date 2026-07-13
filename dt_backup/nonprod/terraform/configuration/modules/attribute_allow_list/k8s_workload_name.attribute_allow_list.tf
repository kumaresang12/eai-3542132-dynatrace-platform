resource "dynatrace_attribute_allow_list" "k8s_workload_name" {
  enabled = true
  key     = "k8s.workload.name"
}
