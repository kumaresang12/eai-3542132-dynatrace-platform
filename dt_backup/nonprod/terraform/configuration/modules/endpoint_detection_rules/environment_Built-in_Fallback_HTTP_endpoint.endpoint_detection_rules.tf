resource "dynatrace_endpoint_detection_rules" "environment_Built-in_Fallback_HTTP_endpoint" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABACBidWlsdGluOmVuZHBvaW50LWRldGVjdGlvbi1ydWxlcwAGdGVuYW50AAZ0ZW5hbnQAJDk4NTAwMzA0LTE4N2ItNDY2Ni05ZDFhLTVjNGI3OWY1OTkzZr7vVN4V2t6t"
  scope        = "environment"
  rule {
    description            = "Example: GET /*"
    condition              = "span.kind == \"server\" and isNotNull(http.request.method)"
    endpoint_name_template = "{http.request.method} /*"
    if_condition_matches   = "DETECT_REQUEST_ON_ENDPOINT"
    rule_name              = "[Built-in] Fallback HTTP endpoint"
  }
}
