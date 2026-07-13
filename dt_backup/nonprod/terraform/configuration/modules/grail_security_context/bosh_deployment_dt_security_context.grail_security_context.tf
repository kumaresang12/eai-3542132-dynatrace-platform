resource "dynatrace_grail_security_context" "bosh_deployment_dt_security_context" {
  destination_property = "dt.security_context"
  entity_type          = "bosh_deployment"
  insert_after         = "vu9U3hXa3q0AAAABADBidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdyYWlsLnNlY3VyaXR5LmNvbnRleHQABnRlbmFudAAGdGVuYW50ACQ2ZDY5NzVhNS02ZTI0LTMzZDctOTk0Mi0yOTRmNTc5MGQwOWS-71TeFdrerQ"
}
