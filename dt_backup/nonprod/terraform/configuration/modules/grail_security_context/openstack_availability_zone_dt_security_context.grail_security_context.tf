resource "dynatrace_grail_security_context" "openstack_availability_zone_dt_security_context" {
  destination_property = "dt.security_context"
  entity_type          = "openstack_availability_zone"
  insert_after         = "vu9U3hXa3q0AAAABADBidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdyYWlsLnNlY3VyaXR5LmNvbnRleHQABnRlbmFudAAGdGVuYW50ACQwMzY1NmY3ZS01ZTZlLTMwN2QtODRmNi00YmEyYTFhYTZiMGO-71TeFdrerQ"
}
