resource "dynatrace_host_anomalies_v2" "HOST_GROUP-A456F7E439B0B0D9" {
  scope = "HOST_GROUP-A456F7E439B0B0D9"
  host {
    connection_lost_detection {
      enabled               = true
      on_graceful_shutdowns = "DONT_ALERT_ON_GRACEFUL_SHUTDOWN"
    }
    high_cpu_saturation_detection {
      enabled        = true
      detection_mode = "auto"
    }
    high_gc_activity_detection {
      enabled        = true
      detection_mode = "auto"
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
      enabled        = true
      detection_mode = "auto"
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
      enabled        = true
      detection_mode = "auto"
    }
    network_tcp_problems_detection {
      enabled        = true
      detection_mode = "auto"
    }
  }
}
