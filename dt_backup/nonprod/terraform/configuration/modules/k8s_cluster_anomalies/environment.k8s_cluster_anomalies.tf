resource "dynatrace_k8s_cluster_anomalies" "environment" {
  scope = "environment"
  cpu_requests_saturation {
    enabled = false
  }
  memory_requests_saturation {
    enabled = false
  }
  monitoring_issues {
    enabled = true
    configuration {
      observation_period_in_minutes = 30
      sample_period_in_minutes      = 15
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
