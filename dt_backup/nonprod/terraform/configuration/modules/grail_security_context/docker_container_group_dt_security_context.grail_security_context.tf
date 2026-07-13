resource "dynatrace_grail_security_context" "docker_container_group_dt_security_context" {
  destination_property = "dt.security_context"
  entity_type          = "docker_container_group"
  insert_after         = "vu9U3hXa3q0AAAABADBidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdyYWlsLnNlY3VyaXR5LmNvbnRleHQABnRlbmFudAAGdGVuYW50ACQ0NzUxMmFmYi1lNDVhLTM4NGItOTYyMi0zNjQxNmRmNjNiM2G-71TeFdrerQ"
}
