resource "dynatrace_endpoint_detection_rules" "environment_Built-in_HTTP_request_method_and_truncated_URI_path" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABACBidWlsdGluOmVuZHBvaW50LWRldGVjdGlvbi1ydWxlcwAGdGVuYW50AAZ0ZW5hbnQAJDkyOTQ3ZmNhLTMwOWQtNDk1OS1iMmZjLWQ1ZjY3NDRlODY4Mb7vVN4V2t6t"
  scope        = "environment"
  rule {
    description            = "Example: GET /docs"
    condition              = "span.kind == \"server\" and isNotNull(http.request.method) and isNotNull(url.truncated_path)"
    endpoint_name_template = "{http.request.method} {url.truncated_path}"
    if_condition_matches   = "DETECT_REQUEST_ON_ENDPOINT"
    rule_name              = "[Built-in] HTTP request method and truncated URI path"
  }
}
