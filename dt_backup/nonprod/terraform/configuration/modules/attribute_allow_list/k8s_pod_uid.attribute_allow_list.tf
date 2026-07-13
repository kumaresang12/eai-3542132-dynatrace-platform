resource "dynatrace_attribute_allow_list" "k8s_pod_uid" {
  enabled = true
  key     = "k8s.pod.uid"
}
