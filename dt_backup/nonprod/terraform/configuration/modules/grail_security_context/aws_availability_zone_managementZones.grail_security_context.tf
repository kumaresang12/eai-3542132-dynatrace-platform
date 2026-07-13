resource "dynatrace_grail_security_context" "aws_availability_zone_managementZones" {
  destination_property = "managementZones"
  entity_type          = "aws_availability_zone"
  insert_after         = ""
}
