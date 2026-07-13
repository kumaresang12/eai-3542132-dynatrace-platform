resource "dynatrace_k8s_node_anomalies" "environment" {
  scope = "environment"
  cpu_requests_saturation {
    enabled = false
  }
  memory_requests_saturation {
    enabled = false
  }
  node_problematic_condition {
    enabled = true
    configuration {
      observation_period_in_minutes = 5
      sample_period_in_minutes      = 3
    }
  }
  pods_saturation {
    enabled = false
  }
  readiness_issues {
    enabled = true
    configuration {
      observation_period_in_minutes = 5
      sample_period_in_minutes      = 3
    }
  }
}
