resource "dynatrace_generic_types" "cloudhub_app" {
  name         = "cloudhub:app"
  enabled      = true
  created_by   = "com.dynatrace.mulesoft-cloudhub 2.2.6"
  display_name = "Cloudhub Application"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDQ5NmRjZTAzLTAxYjYtNThiNC04Nzc4LTA2NWVkY2MxZGZhOb7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "application"
      id_pattern            = "cloudhub:app_{org.id}_{env.id}_{app.id}"
      instance_name_pattern = "{app.domain} ({env.name})"
      attributes {
        attribute {
          display_name = "ID"
          key          = "app_id"
          pattern      = "{app.id}"
        }
        attribute {
          display_name = "Domain"
          key          = "app_domain"
          pattern      = "{app.domain}"
        }
        attribute {
          display_name = "Full Domain"
          key          = "app_full_domain"
          pattern      = "{app.full_domain}"
        }
        attribute {
          display_name = "Worker Type"
          key          = "app_worker_type"
          pattern      = "{app.worker_type}"
        }
        attribute {
          display_name = "File Name"
          key          = "app_file_name"
          pattern      = "{app.file_name}"
        }
        attribute {
          display_name = "Mule Version"
          key          = "app_mule_version"
          pattern      = "{app.mule_version}"
        }
        attribute {
          display_name = "Region"
          key          = "app_region"
          pattern      = "{app.region}"
        }
        attribute {
          display_name = "Href"
          key          = "app_href"
          pattern      = "{app.href}"
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
          display_name = "Environment Name"
          key          = "env_name"
          pattern      = "{env.name}"
        }
        attribute {
          display_name = "Status"
          key          = "app_status"
          pattern      = "{app.status}"
        }
        attribute {
          display_name = "Type"
          key          = "app_type"
          pattern      = "{app.type}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      sources {
        source {
          condition   = "$prefix(cloudhub.app.)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "application"
      id_pattern            = "cloudhub:app_{org.id}_{env.id}_{app.id}"
      instance_name_pattern = "{app.domain} ({env.name})"
      attributes {
        attribute {
          display_name = "ID"
          key          = "app_id"
          pattern      = "{app.id}"
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
      }
    }
  }
}
