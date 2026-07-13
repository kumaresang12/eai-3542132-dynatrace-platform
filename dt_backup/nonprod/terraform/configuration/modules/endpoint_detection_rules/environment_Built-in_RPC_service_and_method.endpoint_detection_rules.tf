resource "dynatrace_endpoint_detection_rules" "environment_Built-in_RPC_service_and_method" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABACBidWlsdGluOmVuZHBvaW50LWRldGVjdGlvbi1ydWxlcwAGdGVuYW50AAZ0ZW5hbnQAJDkwNjg5OWIwLTk1YzEtNGExNi1iOGI0LTc1MDEwMTg0NDVmML7vVN4V2t6t"
  scope        = "environment"
  rule {
    description            = "Example: myservice.EchoService.exampleMethod"
    condition              = "span.kind == \"server\" and isNotNull(rpc.service) and isNotNull(rpc.method)"
    endpoint_name_template = "{rpc.service}.{rpc.method}"
    if_condition_matches   = "DETECT_REQUEST_ON_ENDPOINT"
    rule_name              = "[Built-in] RPC service and method"
  }
}
