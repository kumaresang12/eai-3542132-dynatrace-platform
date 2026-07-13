resource "dynatrace_generic_types" "cloudhub_worker" {
  name         = "cloudhub:worker"
  enabled      = true
  created_by   = "com.dynatrace.mulesoft-cloudhub 2.2.6"
  display_name = "Cloudhub Worker"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDcyY2FiYzhiLTVlNDgtNTVkZC05ZThkLTRkOTBkMzdiYzE3Mr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "robots"
      id_pattern            = "cloudhub:worker_{org.id}_{env.id}_{app.id}_{worker_id}"
      instance_name_pattern = "{worker_id} ({app.domain} - {env.name})"
      attributes {
        attribute {
          display_name = "App ID"
          key          = "app_id"
          pattern      = "{app.id}"
        }
        attribute {
          display_name = "App Domain"
          key          = "app_domain"
          pattern      = "{app.domain}"
        }
        attribute {
          display_name = "Environment ID"
          key          = "env_id"
          pattern      = "{env.id}"
        }
        attribute {
          display_name = "Organization ID"
          key          = "org_id"
          pattern      = "{org.id}"
        }
        attribute {
          display_name = "Worker ID"
          key          = "worker_id"
          pattern      = "{worker_id}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      sources {
        source {
          condition   = "$prefix(cloudhub.app.worker.)"
          source_type = "Metrics"
        }
        source {
          source_type = "Logs"
        }
      }
    }
  }
}
