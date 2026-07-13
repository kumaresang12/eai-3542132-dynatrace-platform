resource "dynatrace_grail_security_context" "openstack_compute_node_dt_security_context" {
  destination_property = "dt.security_context"
  entity_type          = "openstack_compute_node"
  insert_after         = "vu9U3hXa3q0AAAABADBidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdyYWlsLnNlY3VyaXR5LmNvbnRleHQABnRlbmFudAAGdGVuYW50ACQ4YWQwYmUxMi03YzRmLTMxYTgtOTc1Zi01OGFmNjIxMjcwYTC-71TeFdrerQ"
}
