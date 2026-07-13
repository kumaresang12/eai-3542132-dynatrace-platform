resource "dynatrace_disk_edge_anomaly_detectors" "environment_default_detection_policy" {
  enabled          = false
  insert_after     = ""
  operating_system = [ "AIX", "LINUX", "WINDOWS" ]
  policy_name      = "default detection policy"
  scope            = "environment"
  alerts {
    alert {
      threshold_milliseconds = 200
      trigger                = "WRITE_TIME_EXCEEDING"
      sample_count_thresholds {
        dealerting_evaluation_window = 30
        dealerting_samples           = 24
        violating_evaluation_window  = 30
        violating_samples            = 18
      }
    }
    alert {
      threshold_percent = 3
      trigger           = "AVAILABLE_DISK_SPACE_PERCENT_BELOW"
      sample_count_thresholds {
        dealerting_evaluation_window = 30
        dealerting_samples           = 24
        violating_evaluation_window  = 30
        violating_samples            = 18
      }
    }
    alert {
      threshold_percent = 5
      trigger           = "AVAILABLE_INODES_PERCENT_BELOW"
      sample_count_thresholds {
        dealerting_evaluation_window = 30
        dealerting_samples           = 24
        violating_evaluation_window  = 30
        violating_samples            = 18
      }
    }
  }
}
