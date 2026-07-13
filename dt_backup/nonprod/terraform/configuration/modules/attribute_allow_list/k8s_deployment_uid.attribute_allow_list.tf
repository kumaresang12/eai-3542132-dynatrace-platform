resource "dynatrace_attribute_allow_list" "k8s_deployment_uid" {
  enabled = true
  key     = "k8s.deployment.uid"
}
