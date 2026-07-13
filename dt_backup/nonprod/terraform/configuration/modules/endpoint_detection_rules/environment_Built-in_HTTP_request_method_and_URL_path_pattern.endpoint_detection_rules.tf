resource "dynatrace_endpoint_detection_rules" "environment_Built-in_HTTP_request_method_and_URL_path_pattern" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABACBidWlsdGluOmVuZHBvaW50LWRldGVjdGlvbi1ydWxlcwAGdGVuYW50AAZ0ZW5hbnQAJDk1ZTk2ZTE1LWEyNTgtNDM4YS04ZThhLWNmODViNzRkZWZjM77vVN4V2t6t"
  scope        = "environment"
  rule {
    description            = "Based on the output of URL path pattern matching. Example: POST /api/v1/*"
    condition              = "isNotNull(http.request.method) and isNotNull(url.path.pattern)"
    endpoint_name_template = "{http.request.method} {url.path.pattern}"
    if_condition_matches   = "DETECT_REQUEST_ON_ENDPOINT"
    rule_name              = "[Built-in] HTTP request method and URL path pattern"
  }
}
