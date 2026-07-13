resource "dynatrace_log_storage" "aks-fxf-dna-cus-dev" {
  name            = "aks-fxf-dna-cus-dev"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEDY5RkMzQjYwRTA0MDdEQ0YAJGEyYjExNmZlLWI2ZDctMzkwMS05MjU5LWNlODZhN2U1ZWQzZr7vVN4V2t6t"
  scope           = "KUBERNETES_CLUSTER-8F7196574F694E65"
  send_to_storage = true
}
