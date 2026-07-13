resource "dynatrace_grail_security_context" "cinder_volume_dt_security_context" {
  destination_property = "dt.security_context"
  entity_type          = "cinder_volume"
  insert_after         = "vu9U3hXa3q0AAAABADBidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdyYWlsLnNlY3VyaXR5LmNvbnRleHQABnRlbmFudAAGdGVuYW50ACQ1NjgyN2Y0ZS05MTNmLTM4ZmItYjlkOS0yMzVjMjY4MzkyMji-71TeFdrerQ"
}
