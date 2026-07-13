resource "dynatrace_host_anomalies_v2" "HOST-C6C46FF8A017D0CD" {
  scope = "HOST-C6C46FF8A017D0CD"
  host {
    connection_lost_detection {
      enabled               = true
      on_graceful_shutdowns = "DONT_ALERT_ON_GRACEFUL_SHUTDOWN"
    }
    high_cpu_saturation_detection {
      enabled        = true
      detection_mode = "custom"
      custom_thresholds {
        cpu_saturation = 98
        event_thresholds {
          dealerting_evaluation_window = 30
          dealerting_samples           = 24
          violating_evaluation_window  = 30
          violating_samples            = 18
        }
      }
    }
    high_memory_detection {
      enabled        = true
      detection_mode = "auto"
    }
    high_system_load_detection {
      enabled        = true
      detection_mode = "auto"
    }
    out_of_memory_detection {
      enabled        = true
      detection_mode = "auto"
    }
    out_of_threads_detection {
      enabled        = true
      detection_mode = "auto"
    }
  }
  network {
    high_network_detection {
      enabled = false
    }
    network_dropped_packets_detection {
      enabled        = true
      detection_mode = "auto"
    }
    network_errors_detection {
      enabled        = true
      detection_mode = "auto"
    }
    network_high_retransmission_detection {
      enabled = false
    }
    network_tcp_problems_detection {
      enabled = false
    }
  }
}
