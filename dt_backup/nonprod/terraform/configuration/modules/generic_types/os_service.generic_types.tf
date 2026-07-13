resource "dynatrace_generic_types" "os_service" {
  name         = "os:service"
  enabled      = true
  created_by   = "Dynatrace"
  display_name = "OS Service"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDRmMzJmMTZjLTNkMTMtNTVkNS04YjFhLWFkNTU3NDMwOTcxMr7vVN4V2t6t"
  rules {
    rule {
      id_pattern            = "{os_service.name}{dt.smartscape.host}"
      instance_name_pattern = "{os_service.display_name}"
      required_dimensions {
        required_dimension {
          key = "os_service.display_name"
        }
      }
      sources {
        source {
          condition   = "$eq(dt.osservice.availability)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      id_pattern            = "{os_service.name}{dt.smartscape.host}"
      instance_name_pattern = "{os_service.display_name}"
      required_dimensions {
        required_dimension {
          key = "os_service.display_name"
        }
      }
      sources {
        source {
          condition   = "$eq(AVAILABILITY_EVENT)"
          source_type = "Events"
        }
      }
    }
    rule {
      id_pattern            = "{dt.osservice.name}{dt.entity.host}"
      instance_name_pattern = "{dt.osservice.display_name}"
      sources {
        source {
          condition   = "$eq(builtin:osservice.availability)"
          source_type = "Metrics"
        }
        source {
          condition   = "$eq(dt.osservice.availability)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      id_pattern            = "{dt.osservice.name}{dt.entity.host}"
      instance_name_pattern = "{dt.osservice.display_name}"
      attributes {
        attribute {
          display_name = "OS Service Name"
          key          = "name"
          pattern      = "{dt.osservice.name}"
        }
        attribute {
          display_name = "OS Service Display Name"
          key          = "display_name"
          pattern      = "{dt.osservice.display_name}"
        }
        attribute {
          display_name = "OS Service Path"
          key          = "path"
          pattern      = "{dt.osservice.path}"
        }
        attribute {
          display_name = "OS Service Status"
          key          = "status"
          pattern      = "{dt.osservice.status}"
        }
        attribute {
          display_name = "OS Service Startup Type"
          key          = "startup_type"
          pattern      = "{dt.osservice.startup_type}"
        }
        attribute {
          display_name = "OS Service Alerting"
          key          = "alerting"
          pattern      = "{dt.osservice.alerting}"
        }
        attribute {
          display_name = "OS Service Manufacturer"
          key          = "manufacturer"
          pattern      = "{dt.osservice.manufacturer}"
        }
        attribute {
          display_name = "OS Service Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      sources {
        source {
          source_type = "Topology"
        }
      }
    }
    rule {
      id_pattern            = "{dt.osservice.name}{dt.entity.host}"
      instance_name_pattern = "{dt.osservice.display_name}"
      sources {
        source {
          condition   = "$eq(AVAILABILITY_EVENT)"
          source_type = "Events"
        }
      }
    }
  }
}
