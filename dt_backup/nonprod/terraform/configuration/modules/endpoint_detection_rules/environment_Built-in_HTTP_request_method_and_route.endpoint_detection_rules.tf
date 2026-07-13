resource "dynatrace_endpoint_detection_rules" "environment_Built-in_HTTP_request_method_and_route" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABACBidWlsdGluOmVuZHBvaW50LWRldGVjdGlvbi1ydWxlcwAGdGVuYW50AAZ0ZW5hbnQAJDhiYmJjMDQzLTdkNGUtNGZhYy1iN2ZlLTZlMjZkNTExZTkyOL7vVN4V2t6t"
  scope        = "environment"
  rule {
    description            = "Example: POST /users/:userID?"
    condition              = "span.kind == \"server\" and isNotNull(http.request.method) and isNotNull(http.route)"
    endpoint_name_template = "{http.request.method} {http.route}"
    if_condition_matches   = "DETECT_REQUEST_ON_ENDPOINT"
    rule_name              = "[Built-in] HTTP request method and route"
  }
}
