resource "dynatrace_generic_types" "cloudhub_api" {
  name         = "cloudhub:api"
  enabled      = true
  created_by   = "com.dynatrace.mulesoft-cloudhub 2.2.6"
  display_name = "Cloudhub API"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGM2YzJmZjIxLTBiZTMtNWI3Zi1hNTBjLTk2NjZmOWZkZTJkY77vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "application"
      id_pattern            = "cloudhub:api_{org.id}_{env.id}_{asset.id}_{api_version_id}"
      instance_name_pattern = "{asset.name} ({api_version_id})"
      attributes {
        attribute {
          display_name = "Asset ID"
          key          = "asset_id"
          pattern      = "{asset.id}"
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
          display_name = "Asset Name"
          key          = "asset_name"
          pattern      = "{asset.name}"
        }
        attribute {
          display_name = "Asset Group"
          key          = "asset_group"
          pattern      = "{asset.group}"
        }
        attribute {
          display_name = "API Version ID"
          key          = "api_version_id"
          pattern      = "{api_version_id}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      sources {
        source {
          condition   = "$prefix(cloudhub.api.)"
          source_type = "Metrics"
        }
      }
    }
  }
}
