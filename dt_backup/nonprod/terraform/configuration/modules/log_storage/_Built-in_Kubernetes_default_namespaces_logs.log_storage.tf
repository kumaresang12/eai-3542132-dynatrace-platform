resource "dynatrace_log_storage" "_Built-in_Kubernetes_default_namespaces_logs" {
  name            = "[Built-in] Kubernetes default namespaces logs"
  enabled         = false
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABnRlbmFudAAGdGVuYW50ACRlMmI2NzE0OC04M2FjLTExZWUtYjk2Mi0wMjQyYWMxMjAwMDK-71TeFdrerQ"
  scope           = "environment"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "k8s.namespace.name"
      operator  = "MATCHES"
      values    = [ "default", "dynatrace", "kube-node-lease", "kube-public", "kube-system" ]
    }
  }
}
