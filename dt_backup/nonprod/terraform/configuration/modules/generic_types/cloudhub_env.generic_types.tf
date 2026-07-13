resource "dynatrace_generic_types" "cloudhub_env" {
  name         = "cloudhub:env"
  enabled      = true
  created_by   = "com.dynatrace.mulesoft-cloudhub 2.2.6"
  display_name = "Mulesoft Environment"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGZhZTY5NDczLWYzMjUtNWNhYy04NmI3LWUwMDMxMDExZGJmZr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "environment"
      id_pattern            = "cloudhub:env_{org.id}_{env.id}"
      instance_name_pattern = "{env.name}"
      attributes {
        attribute {
          display_name = "ID"
          key          = "env_id"
          pattern      = "{env.id}"
        }
        attribute {
          display_name = "Name"
          key          = "env_name"
          pattern      = "{env.name}"
        }
        attribute {
          display_name = "Production"
          key          = "env_is_production"
          pattern      = "{env.is_production}"
        }
        attribute {
          display_name = "Type"
          key          = "env_type"
          pattern      = "{env.type}"
        }
        attribute {
          display_name = "Client ID"
          key          = "env_client_id"
          pattern      = "{env.client_id}"
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
          condition   = "$prefix(cloudhub.env.)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "environment"
      id_pattern            = "cloudhub:env_{org.id}_{env.id}"
      instance_name_pattern = "{env.name}"
      attributes {
        attribute {
          display_name = "ID"
          key          = "env_id"
          pattern      = "{env.id}"
        }
        attribute {
          display_name = "Name"
          key          = "env_name"
          pattern      = "{env.name}"
        }
        attribute {
          display_name = "Production"
          key          = "env_is_production"
          pattern      = "{env.is_production}"
        }
        attribute {
          display_name = "Type"
          key          = "env_type"
          pattern      = "{env.type}"
        }
        attribute {
          display_name = "Client ID"
          key          = "env_client_id"
          pattern      = "{env.client_id}"
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
          condition   = "$prefix(cloudhub.app.)"
          source_type = "Metrics"
        }
        source {
          condition   = "$prefix(cloudhub.api.)"
          source_type = "Metrics"
        }
      }
    }
  }
}
