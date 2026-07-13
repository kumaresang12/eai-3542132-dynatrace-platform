resource "dynatrace_discovery_default_rules" "unmonitored-istio-0" {
  rule {
    description       =<<-EOT
      Istio service mesh and Envoy proxies are an important part of many Kubernetes deployments.
          Monitoring via an extension is highly recommended. Without it, you and Davis may be blind to Istio/Envoy
          internal issues.
    EOT
    category          = "Kubernetes"
    environment_scope = true
    id                = "unmonitored-istio-0"
    priority          = "WARNING"
    query             =<<-EOT
      fetch dt.entity.process_group_instance, from:-15m
              | filter contains(toString(softwareTechnologies),"type:ISTIO")
              | fieldsAdd cgi=belongs_to[dt.entity.container_group_instance]
              | lookup [fetch dt.entity.container_group_instance], lookupField:id, sourceField:cgi, prefix:"cgi."
              | fieldsAdd cai=cgi.belongs_to[dt.entity.cloud_application_instance]
              | lookup [fetch dt.entity.cloud_application_instance], lookupField:id, sourceField:cai, prefix:"cai."
              | lookup [timeseries metric=avg(istio_requests_total), by:{dt.entity.cloud_application_instance}], lookupField:dt.entity.cloud_application_instance, sourceField:cai, fields:{metric}
              | fields process.id=id, process=entity.name, container.id=cgi.id, container=cgi.entity.name, workload.id=cai.id, workload=cai.entity.name, compliant=isNotNull(metric)
    EOT
    title             = "Undermonitored Istio/Envoy"
    actions {
      action {
        name = "activateExtension"
        parameters {
          parameter {
            name  = "extensionName"
            value = "com.dynatrace.extension.istio-prometheus"
          }
        }
      }
    }
  }
  settings {
    muted = false
  }
}
