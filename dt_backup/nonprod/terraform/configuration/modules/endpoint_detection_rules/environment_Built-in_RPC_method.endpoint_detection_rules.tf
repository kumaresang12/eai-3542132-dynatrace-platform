resource "dynatrace_endpoint_detection_rules" "environment_Built-in_RPC_method" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABACBidWlsdGluOmVuZHBvaW50LWRldGVjdGlvbi1ydWxlcwAGdGVuYW50AAZ0ZW5hbnQAJDE5YTkxZjg5LTk5NjktNGE3OS1iYjdhLTQxZTMwMWIyZTJkMr7vVN4V2t6t"
  scope        = "environment"
  rule {
    description            = "Example: exampleMethod"
    condition              = "span.kind == \"server\" and isNotNull(rpc.method)"
    endpoint_name_template = "{rpc.method}"
    if_condition_matches   = "DETECT_REQUEST_ON_ENDPOINT"
    rule_name              = "[Built-in] RPC method"
  }
}
