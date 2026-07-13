resource "dynatrace_attribute_allow_list" "ws_service_endpoints" {
  enabled = true
  key     = "ws.service.endpoints"
}
