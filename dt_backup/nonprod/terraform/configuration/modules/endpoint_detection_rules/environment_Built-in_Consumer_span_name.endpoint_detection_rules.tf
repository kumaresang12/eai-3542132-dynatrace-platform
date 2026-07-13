resource "dynatrace_endpoint_detection_rules" "environment_Built-in_Consumer_span_name" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABACBidWlsdGluOmVuZHBvaW50LWRldGVjdGlvbi1ydWxlcwAGdGVuYW50AAZ0ZW5hbnQAJDQzNjkyNzk2LWZiYzItNGJlZS1hMWYyLTBkMjlkYzk4YzBmY77vVN4V2t6t"
  scope        = "environment"
  rule {
    description            = "As a fallback the endpoint is named after the request root span."
    condition              = "span.kind == \"consumer\" and isNotNull(span.name)"
    endpoint_name_template = "{span.name}"
    if_condition_matches   = "DETECT_REQUEST_ON_ENDPOINT"
    rule_name              = "[Built-in] Consumer span name"
  }
}
