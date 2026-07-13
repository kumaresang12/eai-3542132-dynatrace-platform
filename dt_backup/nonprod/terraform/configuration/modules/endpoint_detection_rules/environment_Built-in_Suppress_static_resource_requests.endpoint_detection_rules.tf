resource "dynatrace_endpoint_detection_rules" "environment_Built-in_Suppress_static_resource_requests" {
  enabled = true
  scope   = "environment"
  rule {
    description          = "Suppresses all GET requests to urls with resource extensions"
    condition            =<<-EOT
      matchesValue(http.request.method,"GET") AND
      matchesValue(url.path, {"*.jpg", "*.png", "*.gif", "*.jpeg", "*.bmp", "*.svg", "*.ico", "*.woff", "*.ttf", "*.otf", "*.woff2", "*.eot","*.js","*.css","*.zip","*.exe"})
    EOT
    if_condition_matches = "SUPPRESS_REQUEST"
    rule_name            = "[Built-in] Suppress static resource requests"
  }
}
