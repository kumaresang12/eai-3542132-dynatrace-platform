resource "dynatrace_failure_detection_rule_sets" "environment_Built-in_Default_failure_detection" {
  enabled      = true
  insert_after = ""
  scope        = "environment"
  ruleset {
    ruleset_name = "[Built-in] Default failure detection"
    fail_on_exceptions {
      enabled = true
    }
    fail_on_grpc_status_codes {
      status_codes = "2,4,12,13,14,15"
    }
    fail_on_http_response_status_codes {
      status_codes = "500-599"
    }
    fail_on_span_status_error {
      enabled = true
    }
    overrides {
      force_success_on_grpc_response_status_codes {
      }
      force_success_on_http_response_status_codes {
      }
      force_success_on_span_status_ok {
        enabled = false
      }
    }
  }
}
