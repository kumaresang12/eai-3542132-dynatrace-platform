resource "dynatrace_service_detection_rules" "environment_Service_Naming_Test" {
  enabled = true
  scope   = "environment"
  rule {
    condition             = "matchesValue(pcf.organization_name,\"3531193\")"
    rule_name             = "Service Naming Test"
    service_name_template = "{cloudfoundry.application.name}-{cloudfoundry.space.name}-TEST"
  }
}
