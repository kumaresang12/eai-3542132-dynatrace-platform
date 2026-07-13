resource "dynatrace_attribute_allow_list" "k8s_pod_basename" {
  enabled = true
  key     = "k8s.pod.basename"
}
